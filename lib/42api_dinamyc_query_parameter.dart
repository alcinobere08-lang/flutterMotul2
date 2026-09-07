// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Aula38()));
// }

// class Post {
//   int id;
//   String title;
//   String body;

//   Post({required this.id, required this.title, required this.body});

//   factory Post.fromJson(Map<String, dynamic> json) {
//     return Post(id: json["id"], title: json["title"], body: json["body"]);
//   }
// }

// class Aula38 extends StatefulWidget {
//   const Aula38({super.key});

//   @override
//   State<Aula38> createState() => _Aula38State();
// }

// class _Aula38State extends State<Aula38> {
//   TextEditingController controller = TextEditingController();

//   Future<List<Post>> bukaPost(String userId) async {
//     Uri uri = Uri.parse(
//       "https://jsonplaceholder.typicode.com/posts",
//     ).replace(queryParameters: {"userId": userId});

//     final response = await http.get(uri);

//     if (response.statusCode == 200) {
//       List<dynamic> jsonData = jsonDecode(response.body);

//       List<Post> posts = jsonData.map((item) => Post.fromJson(item)).toList();

//       return posts;
//     } else {
//       throw Exception("Falha buka API");
//     }
//   }

//   Future<List<Post>>? futurePost;

//   void haloSearch() {
//     String keyword = controller.text.trim();

//     if (keyword.isEmpty) {
//       return;
//     }

//     setState(() {
//       futurePost = bukaPost(keyword);
//     });
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("API Dynamic Search")),

//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     controller: controller,
//                     decoration: const InputDecoration(
//                       labelText: "Hakerek User ID",
//                       border: OutlineInputBorder(),
//                     ),
//                   ),
//                 ),

//                 const SizedBox(width: 10),

//                 ElevatedButton(
//                   onPressed: haloSearch,
//                   child: const Text("Buka"),
//                 ),
//               ],
//             ),
//           ),

//           Expanded(
//             child: futurePost == null
//                 ? const Center(child: Text("Hakerek User ID no klik Buka"))
//                 : FutureBuilder<List<Post>>(
//                     future: futurePost,

//                     builder: (context, snapshot) {
//                       if (snapshot.connectionState == ConnectionState.waiting) {
//                         return const Center(child: CircularProgressIndicator());
//                       }

//                       if (snapshot.hasError) {
//                         return Center(child: Text("Erro: ${snapshot.error}"));
//                       }

//                       List<Post> posts = snapshot.data ?? [];

//                       if (posts.isEmpty) {
//                         return const Center(child: Text("Dadus la hetan"));
//                       }

//                       return ListView.builder(
//                         itemCount: posts.length,

//                         itemBuilder: (context, index) {
//                           return Card(
//                             child: ListTile(
//                               leading: CircleAvatar(
//                                 child: Text(posts[index].id.toString()),
//                               ),

//                               title: Text(posts[index].title),

//                               subtitle: Text(posts[index].body),
//                             ),
//                           );
//                         },
//                       );
//                     },
//                   ),
//           ),
//         ],
//       ),
//     );
//   }
// }

//ezersisiu 2
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Aula38()));
// }

// class Post {
//   int id;
//   String title;
//   String body;

//   Post({required this.id, required this.title, required this.body});

//   factory Post.fromJson(Map<String, dynamic> json) {
//     return Post(id: json["id"], title: json["title"], body: json["body"]);
//   }
// }

// class Aula38 extends StatefulWidget {
//   const Aula38({super.key});

//   @override
//   State<Aula38> createState() => _Aula38State();
// }

// class _Aula38State extends State<Aula38> {
//   TextEditingController userIdcontroller = TextEditingController();
//   TextEditingController limitcontroller = TextEditingController();

//   Future<List<Post>> bukaPost(String userId, String limit) async {
//     Uri uri = Uri.parse(
//       "https://jsonplaceholder.typicode.com/posts",
//     ).replace(queryParameters: {"userId": userId, "_limit": limit});

//     final response = await http.get(uri);

//     if (response.statusCode == 200) {
//       List<dynamic> jsonData = jsonDecode(response.body);

//       List<Post> posts = jsonData.map((item) => Post.fromJson(item)).toList();

//       return posts;
//     } else {
//       throw Exception("Falha buka API");
//     }
//   }

//   Future<List<Post>>? futurePost;

//   void haloSearch() {
//     String userId = userIdcontroller.text.trim();
//     String limit = limitcontroller.text.trim();

//     if (userId.isEmpty || limit.isEmpty) {
//       return;
//     }

//     setState(() {
//       futurePost = bukaPost(userId, limit);
//     });
//   }

//   @override
//   void dispose() {
//     userIdcontroller.dispose();
//     limitcontroller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("API Dynamic Search")),

//       body: Column(
//         children: [
//           TextField(
//             controller: userIdcontroller,
//             decoration: const InputDecoration(
//               labelText: "Hakerek User ID",
//               border: OutlineInputBorder(),
//             ),
//           ),
//           SizedBox(height: 10),
//           TextField(
//             controller: limitcontroller,
//             decoration: const InputDecoration(
//               labelText: "Hakerek limit",
//               border: OutlineInputBorder(),
//             ),
//           ),

//           const SizedBox(height: 20),

//           ElevatedButton(onPressed: haloSearch, child: const Text("Buka")),

//           Expanded(
//             child: futurePost == null
//                 ? const Center(child: Text("Hakerek User ID no klik Buka"))
//                 : FutureBuilder<List<Post>>(
//                     future: futurePost,

//                     builder: (context, snapshot) {
//                       if (snapshot.connectionState == ConnectionState.waiting) {
//                         return const Center(child: CircularProgressIndicator());
//                       }

//                       if (snapshot.hasError) {
//                         return Center(child: Text("Erro: ${snapshot.error}"));
//                       }

//                       List<Post> posts = snapshot.data ?? [];

//                       if (posts.isEmpty) {
//                         return const Center(child: Text("Dadus la hetan"));
//                       }

//                       return ListView.builder(
//                         itemCount: posts.length,

//                         itemBuilder: (context, index) {
//                           return Card(
//                             child: ListTile(
//                               leading: CircleAvatar(
//                                 child: Text(posts[index].id.toString()),
//                               ),

//                               title: Text(posts[index].title),

//                               subtitle: Text(posts[index].body),
//                             ),
//                           );
//                         },
//                       );
//                     },
//                   ),
//           ),
//         ],
//       ),
//     );
//   }
// }

//dezafiu extra
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Aula38()));
}

class Post {
  int id;
  String title;
  String body;

  Post({required this.id, required this.title, required this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(id: json["id"], title: json["title"], body: json["body"]);
  }
}

class Aula38 extends StatefulWidget {
  const Aula38({super.key});

  @override
  State<Aula38> createState() => _Aula38State();
}

class _Aula38State extends State<Aula38> {
  TextEditingController userIdcontroller = TextEditingController();
  TextEditingController limitcontroller = TextEditingController();
  TextEditingController pagecontroller = TextEditingController();

  Future<List<Post>> bukaPost(String userId, String limit, String page) async {
    Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/posts").replace(
      queryParameters: {"userId": userId, "_limit": limit, "_Page": page},
    );

    final response = await http.get(uri);

    if (response.statusCode == 200) {
      List<dynamic> jsonData = jsonDecode(response.body);

      List<Post> posts = jsonData.map((item) => Post.fromJson(item)).toList();

      return posts;
    } else {
      throw Exception("Falha buka API");
    }
  }

  Future<List<Post>>? futurePost;

  void haloSearch() {
    String userId = userIdcontroller.text.trim();
    String limit = limitcontroller.text.trim();
    String page = pagecontroller.text.trim();

    if (userId.isEmpty || limit.isEmpty || page.isEmpty) {
      return;
    }

    setState(() {
      futurePost = bukaPost(userId, limit, page);
    });
  }

  @override
  void dispose() {
    userIdcontroller.dispose();
    limitcontroller.dispose();
    pagecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("API Dynamic Search")),

      body: Column(
        children: [
          TextField(
            controller: userIdcontroller,
            decoration: const InputDecoration(
              labelText: "Hakerek User ID",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            controller: limitcontroller,
            decoration: const InputDecoration(
              labelText: "Hakerek limit",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            controller: pagecontroller,
            decoration: const InputDecoration(
              labelText: "Hakerek limit",
              border: OutlineInputBorder(),
            ),
          ),

          const SizedBox(height: 20),

          ElevatedButton(onPressed: haloSearch, child: const Text("Buka")),

          Expanded(
            child: futurePost == null
                ? const Center(child: Text("Hakerek User ID no klik Buka"))
                : FutureBuilder<List<Post>>(
                    future: futurePost,

                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(child: CircularProgressIndicator());
                      }

                      if (snapshot.hasError) {
                        return Center(child: Text("Erro: ${snapshot.error}"));
                      }

                      List<Post> posts = snapshot.data ?? [];

                      if (posts.isEmpty) {
                        return const Center(child: Text("Dadus la hetan"));
                      }

                      return ListView.builder(
                        itemCount: posts.length,

                        itemBuilder: (context, index) {
                          return Card(
                            child: ListTile(
                              leading: CircleAvatar(
                                child: Text(posts[index].id.toString()),
                              ),

                              title: Text(posts[index].title),

                              subtitle: Text(posts[index].body),
                            ),
                          );
                        },
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
