// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Aula41(),
//     ),
//   );
// }

// class Post {
//   int id;
//   String title;
//   String body;

//   Post({
//     required this.id,
//     required this.title,
//     required this.body,
//   });

//   factory Post.fromJson(Map<String, dynamic> json) {
//     return Post(
//       id: json["id"],
//       title: json["title"],
//       body: json["body"],
//     );
//   }
// }

// class Aula41 extends StatefulWidget {
//   const Aula41({super.key});

//   @override
//   State<Aula41> createState() => _Aula41State();
// }

// class _Aula41State extends State<Aula41> {
//   TextEditingController idController =
//       TextEditingController();

//   TextEditingController titleController =
//       TextEditingController();

//   String resultado = "";

//   Future<void> atualizaTitle() async {
//     String id = idController.text.trim();
//     String title = titleController.text.trim();

//     if (id.isEmpty || title.isEmpty) {
//       setState(() {
//         resultado = "Preenche ID no Title!";
//       });
//       return;
//     }

//     Uri uri = Uri.parse(
//       "https://jsonplaceholder.typicode.com/posts/$id",
//     );

//     final response = await http.patch(
//       uri,
//       headers: {
//         "Content-Type": "application/json",
//       },
//       body: jsonEncode({
//         "title": title,
//       }),
//     );

//     if (response.statusCode == 200) {
//       Map<String, dynamic> jsonData =
//           jsonDecode(response.body);

//       Post post = Post.fromJson(jsonData);

//       setState(() {
//         resultado =
//             "Title atualiza ona!\n"
//             "ID: ${post.id}\n"
//             "Title: ${post.title}\n"
//             "Body: ${post.body}";
//       });
//     } else {
//       setState(() {
//         resultado = "Falha atualiza title";
//       });
//     }
//   }

//   @override
//   void dispose() {
//     idController.dispose();
//     titleController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Aula 41 - PATCH"),
//       ),

//       body: Padding(
//         padding: const EdgeInsets.all(16),

//         child: Column(
//           children: [
//             TextField(
//               controller: idController,
//               keyboardType: TextInputType.number,
//               decoration: const InputDecoration(
//                 labelText: "Post ID",
//                 border: OutlineInputBorder(),
//               ),
//             ),

//             const SizedBox(height: 15),

//             TextField(
//               controller: titleController,
//               decoration: const InputDecoration(
//                 labelText: "Title foun",
//                 border: OutlineInputBorder(),
//               ),
//             ),

//             const SizedBox(height: 20),

//             ElevatedButton(
//               onPressed: atualizaTitle,
//               child: const Text("Atualiza Title"),
//             ),

//             const SizedBox(height: 20),

//             Text(
//               resultado,
//               style: const TextStyle(fontSize: 18),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//ezersisiu 2
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Aula41()));
// }

// class Post {
//   int Id;
//   String numeru;
//   String rota;
//   String motorista;
//   String status;

//   Post({
//     required this.Id,
//     required this.numeru,
//     required this.rota,
//     required this.status,
//     required this.motorista,
//   });

//   factory Post.fromJson(Map<String, dynamic> json) {
//     return Post(
//       Id: json["id"],
//       numeru: json["userId"].toString(),
//       rota: json["body"],
//       motorista: json["title"],
//       status: json["title"],
//     );
//   }
// }

// class Aula41 extends StatefulWidget {
//   const Aula41({super.key});

//   @override
//   State<Aula41> createState() => _Aula41State();
// }

// class _Aula41State extends State<Aula41> {
//   TextEditingController Idcontroller = TextEditingController();

//   TextEditingController numerucontroller = TextEditingController();
//   TextEditingController rotacontroller = TextEditingController();
//   TextEditingController motoristacnontroller = TextEditingController();
//   TextEditingController statuscontroller = TextEditingController();

//   String resultado = "";

//   Future<void> atualizaTitle() async {
//     String Id = Idcontroller.text.trim();
//     String numeru = numerucontroller.text.trim();
//     String rota = rotacontroller.text.trim();
//     String motorista = motoristacnontroller.text.trim();
//     String status = statuscontroller.text.trim();

//     if (Id.isEmpty ||
//         numeru.isEmpty ||
//         rota.isEmpty ||
//         motorista.isEmpty ||
//         status.isEmpty) {
//       setState(() {
//         resultado = "Preenche ID no Title!";
//       });
//       return;
//     }

//     Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/posts/$Id");

//     final response = await http.patch(
//       uri,
//       headers: {"Content-Type": "application/json"},
//       body: jsonEncode({"title": status}),
//     );

//     if (response.statusCode == 200) {
//       Map<String, dynamic> jsonData = jsonDecode(response.body);

//       Post post = Post.fromJson(jsonData);

//       setState(() {
//         resultado =
//             "Title atualiza ona!\n"
//             "Id: ${post.Id}\n"
//             "numeru: ${post.numeru}\n"
//             "rota: ${post.rota}\n"
//             "Motorista: ${post.motorista}\n"
//             "Status: ${post.status}";
//       });
//     } else {
//       setState(() {
//         resultado = "Falha atualiza title";
//       });
//     }
//   }

//   @override
//   void dispose() {
//     Idcontroller.dispose();
//     numerucontroller.dispose();
//     rotacontroller.dispose();
//     motoristacnontroller.dispose();
//     statuscontroller.dispose();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Aula 41 - PATCH")),

//       body: Padding(
//         padding: const EdgeInsets.all(16),

//         child: Column(
//           children: [
//             TextField(
//               controller: Idcontroller,
//               keyboardType: TextInputType.number,
//               decoration: const InputDecoration(
//                 labelText: "Post ID",
//                 border: OutlineInputBorder(),
//               ),
//             ),

//             const SizedBox(height: 15),

//             TextField(
//               controller: numerucontroller,
//               // keyboardType: TextInputType.number,
//               decoration: const InputDecoration(
//                 labelText: "numeru foun",
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 15),

//             TextField(
//               controller: rotacontroller,
//               // keyboardType: TextInputType.number,
//               decoration: const InputDecoration(
//                 labelText: "rota foun",
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 15),

//             TextField(
//               controller: motoristacnontroller,
//               // keyboardType: TextInputType.number,
//               decoration: const InputDecoration(
//                 labelText: "motorista foun",
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 15),

//             TextField(
//               controller: statuscontroller,
//               // keyboardType: TextInputType.number,
//               decoration: const InputDecoration(
//                 labelText: "status foun",
//                 border: OutlineInputBorder(),
//               ),
//             ),

//             const SizedBox(height: 20),

//             ElevatedButton(
//               onPressed: atualizaTitle,
//               child: const Text("Atualiza Title"),
//             ),

//             const SizedBox(height: 20),

//             Text(resultado, style: const TextStyle(fontSize: 18)),
//           ],
//         ),
//       ),
//     );
//   }
// }

//dezafiu extra
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Aula41()));
}

class Post {
  int Id;

  String motorista;

  Post({required this.Id, required this.motorista});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(Id: json["id"], motorista: json["title"]);
  }
}

class Aula41 extends StatefulWidget {
  const Aula41({super.key});

  @override
  State<Aula41> createState() => _Aula41State();
}

class _Aula41State extends State<Aula41> {
  TextEditingController Idcontroller = TextEditingController();
  TextEditingController motoristacnontroller = TextEditingController();

  String resultado = "";

  Future<void> atualizaTitle() async {
    String Id = Idcontroller.text.trim();
    String motorista = motoristacnontroller.text.trim();
    if (Id.isEmpty || motorista.isEmpty) {
      setState(() {
        resultado = "Preenche ID no Title!";
      });
      return;
    }

    Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/posts/$Id");

    final response = await http.patch(
      uri,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"title": motorista}),
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = jsonDecode(response.body);

      Post post = Post.fromJson(jsonData);

      setState(() {
        resultado =
            "Title atualiza ona!\n"
            "Id: ${post.Id}\n"
            "Motorista: ${post.motorista}";
      });
    } else {
      setState(() {
        resultado = "Falha atualiza title";
      });
    }
  }

  @override
  void dispose() {
    Idcontroller.dispose();
    motoristacnontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Aula 41 - PATCH")),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [
            TextField(
              controller: Idcontroller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Post ID",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: motoristacnontroller,
              // keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "motorista foun",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),

            ElevatedButton(
              onPressed: atualizaTitle,
              child: const Text("Atualiza Title"),
            ),

            const SizedBox(height: 20),

            Text(resultado, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
