// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Aula39()));
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

// class Aula39 extends StatefulWidget {
//   const Aula39({super.key});

//   @override
//   State<Aula39> createState() => _Aula39State();
// }

// class _Aula39State extends State<Aula39> {
//   TextEditingController titleController = TextEditingController();

//   TextEditingController bodyController = TextEditingController();

//   String resultado = "";

//   Future<void> enviarPost() async {
//     String title = titleController.text.trim();
//     String body = bodyController.text.trim();

//     if (title.isEmpty || body.isEmpty) {
//       setState(() {
//         resultado = "Preenche Título no Conteúdo!";
//       });
//       return;
//     }

//     Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");

//     final response = await http.post(
//       uri,
//       headers: {"Content-Type": "application/json"},
//       body: jsonEncode({"title": title, "body": body, "userId": 1}),
//     );

//     if (response.statusCode == 201) {
//       Map<String, dynamic> jsonData = jsonDecode(response.body);

//       Post post = Post.fromJson(jsonData);

//       setState(() {
//         resultado =
//             "Post kria ona!\n"
//             "ID: ${post.id}\n"
//             "Title: ${post.title}";
//       });
//     } else {
//       setState(() {
//         resultado = "Falha haruka dadus";
//       });
//     }
//   }

//   @override
//   void dispose() {
//     titleController.dispose();
//     bodyController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Aula 39 - POST")),

//       body: Padding(
//         padding: const EdgeInsets.all(16),

//         child: Column(
//           children: [
//             TextField(
//               controller: titleController,
//               decoration: const InputDecoration(
//                 labelText: "Título",
//                 border: OutlineInputBorder(),
//               ),
//             ),

//             const SizedBox(height: 15),

//             TextField(
//               controller: bodyController,
//               maxLines: 4,
//               decoration: const InputDecoration(
//                 labelText: "Conteúdo",
//                 border: OutlineInputBorder(),
//               ),
//             ),

//             const SizedBox(height: 20),

//             ElevatedButton(onPressed: enviarPost, child: const Text("Enviar")),

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
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Aula39()));
}

class Post {
  int id;
  String title;
  String body;
  int userId;

  Post({
    required this.id,
    required this.title,
    required this.body,
    required this.userId,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json["id"],
      title: json["title"],
      body: json["body"],
      userId: json["userId"],
    );
  }
}

class Aula39 extends StatefulWidget {
  const Aula39({super.key});

  @override
  State<Aula39> createState() => _Aula39State();
}

class _Aula39State extends State<Aula39> {
  TextEditingController titleController = TextEditingController();

  TextEditingController bodyController = TextEditingController();

  TextEditingController userIdController = TextEditingController();

  String resultado = "";

  Future<void> enviarPost() async {
    String title = titleController.text.trim();
    String body = bodyController.text.trim();
    String userId = userIdController.text.trim();

    if (title.isEmpty || body.isEmpty || userId.isEmpty) {
      setState(() {
        resultado = "Preenche Título no Conteúdo!";
      });
      return;
    }

    Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");

    final response = await http.post(
      uri,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "title": title,
        "body": body,
        "userId": int.parse(userId),
      }),
    );

    if (response.statusCode == 201) {
      Map<String, dynamic> jsonData = jsonDecode(response.body);

      Post post = Post.fromJson(jsonData);

      setState(() {
        resultado =
            "Post kria ona!\n"
            "ID: ${post.id}\n"
            "Title: ${post.title}\n"
            "userId: ${post.userId}";
      });
    } else {
      setState(() {
        resultado = "Falha haruka dadus";
      });
    }
  }

  @override
  void dispose() {
    titleController.dispose();
    bodyController.dispose();
    userIdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Aula 39 - POST")),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: "Título",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: bodyController,
              maxLines: 4,
              decoration: const InputDecoration(
                labelText: "Conteúdo",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),
            TextField(
              controller: userIdController,
              // maxLines: 4,
              decoration: const InputDecoration(
                labelText: "iduser",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(onPressed: enviarPost, child: const Text("Enviar")),

            const SizedBox(height: 20),

            Text(resultado, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
