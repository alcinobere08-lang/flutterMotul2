// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   runApp(MaterialApp(home: Aula37()));
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

// class Aula37 extends StatefulWidget {
//   const Aula37({super.key});

//   @override
//   State<Aula37> createState() => _Aula37State();
// }

// class _Aula37State extends State<Aula37> {
//   late Future<List<Post>> futurePost;

//   @override
//   void initState() {
//     super.initState();

//     futurePost = bukaPost();
//   }

//   Future<List<Post>> bukaPost() async {
//     Uri uri = Uri.parse(
//       "https://jsonplaceholder.typicode.com/posts",
//     ).replace(queryParameters: {"userId": "2"});

//     final response = await http.get(uri);

//     if (response.statusCode == 200) {
//       List<dynamic> jsonData = jsonDecode(response.body);

//       List<Post> posts = jsonData.map((item) => Post.fromJson(item)).toList();

//       return posts;
//     } else {
//       throw Exception("Falha buka API");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Aula 37")),

//       body: FutureBuilder<List<Post>>(
//         future: futurePost,

//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(child: CircularProgressIndicator());
//           }

//           if (snapshot.hasError) {
//             return Center(child: Text("Erro: ${snapshot.error}"));
//           }

//           List<Post> posts = snapshot.data ?? [];

//           return ListView.builder(
//             itemCount: posts.length,

//             itemBuilder: (context, index) {
//               return Card(
//                 child: ListTile(
//                   leading: CircleAvatar(
//                     child: Text(posts[index].id.toString()),
//                   ),

//                   title: Text(posts[index].title),

//                   subtitle: Text(posts[index].body),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }

//ezersisiu 2

// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   runApp(MaterialApp(home: Aula37()));
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

// class Aula37 extends StatefulWidget {
//   const Aula37({super.key});

//   @override
//   State<Aula37> createState() => _Aula37State();
// }

// class _Aula37State extends State<Aula37> {
//   late Future<List<Post>> futurePost;

//   @override
//   void initState() {
//     super.initState();

//     futurePost = bukaPost();
//   }

//   Future<List<Post>> bukaPost() async {
//     Uri uri = Uri.parse(
//       "https://jsonplaceholder.typicode.com/posts",
//     ).replace(queryParameters: {"_Limit": "5"});

//     final response = await http.get(uri);

//     if (response.statusCode == 200) {
//       List<dynamic> jsonData = jsonDecode(response.body);

//       List<Post> posts = jsonData.map((item) => Post.fromJson(item)).toList();

//       return posts;
//     } else {
//       throw Exception("Falha buka API");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Aula 37")),

//       body: FutureBuilder<List<Post>>(
//         future: futurePost,

//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(child: CircularProgressIndicator());
//           }

//           if (snapshot.hasError) {
//             return Center(child: Text("Erro: ${snapshot.error}"));
//           }

//           List<Post> posts = snapshot.data ?? [];

//           return ListView.builder(
//             itemCount: posts.length,

//             itemBuilder: (context, index) {
//               return Card(
//                 child: ListTile(
//                   leading: CircleAvatar(
//                     child: Text(posts[index].id.toString()),
//                   ),

//                   title: Text(posts[index].title),

//                   subtitle: Text(posts[index].body),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }

//dezafiu extra
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(home: Aula37()));
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

class Aula37 extends StatefulWidget {
  const Aula37({super.key});

  @override
  State<Aula37> createState() => _Aula37State();
}

class _Aula37State extends State<Aula37> {
  late Future<List<Post>> futurePost;

  @override
  void initState() {
    super.initState();

    futurePost = bukaPost();
  }

  Future<List<Post>> bukaPost() async {
    Uri uri = Uri.parse(
      "https://jsonplaceholder.typicode.com/posts",
    ).replace(queryParameters: {"userId": "3", "_Limit": "5"});

    final response = await http.get(uri);

    if (response.statusCode == 200) {
      List<dynamic> jsonData = jsonDecode(response.body);

      List<Post> posts = jsonData.map((item) => Post.fromJson(item)).toList();

      return posts;
    } else {
      throw Exception("Falha buka API");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Aula 37")),

      body: FutureBuilder<List<Post>>(
        future: futurePost,

        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text("Erro: ${snapshot.error}"));
          }

          List<Post> posts = snapshot.data ?? [];

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
    );
  }
}
