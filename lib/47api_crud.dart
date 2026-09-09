// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Aula43()));
// }

// class Mikrolet {
//   int id;
//   int numeru;
//   String rota;
//   String motorista;
//   String status;

//   Mikrolet({
//     required this.id,
//     required this.numeru,
//     required this.rota,
//     required this.motorista,
//     required this.status,
//   });

//   factory Mikrolet.fromJson(Map<String, dynamic> json) {
//     return Mikrolet(
//       id: json["id"],
//       numeru: int.tryParse(json["title"].toString()) ?? 0,
//       rota: json["body"] ?? "",
//       motorista: json["userId"].toString(),
//       status: json["status"] ?? "Ativu",
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       "id": id,
//       "title": numeru,
//       "body": rota,
//       "userId": motorista,
//       "status": status,
//     };
//   }
// }

// class Aula43 extends StatefulWidget {
//   const Aula43({super.key});

//   @override
//   State<Aula43> createState() => _Aula43State();
// }

// class _Aula43State extends State<Aula43> {
//   String resultado = "";

//   Future<void> bukaMikrolet() async {
//     final uri = Uri.parse("https://jsonplaceholder.typicode.com/posts/1");

//     final response = await http.get(uri);

//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body);

//       Mikrolet mikrolet = Mikrolet.fromJson(data);

//       setState(() {
//         resultado =
//             "Mikrolet ${mikrolet.numeru}\n"
//             "Rota: ${mikrolet.rota}\n"
//             "Motorista: ${mikrolet.motorista}";
//       });
//     } else {
//       setState(() {
//         resultado = "Falha buka Mikrolet!";
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Aula 43 - CRUD Mikrolet")),

//       body: Padding(
//         padding: const EdgeInsets.all(20),

//         child: Column(
//           children: [
//             ElevatedButton(
//               onPressed: bukaMikrolet,
//               child: const Text("Buka Mikrolet"),
//             ),

//             const SizedBox(height: 30),

//             Text(resultado, style: const TextStyle(fontSize: 18)),
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
//   runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Aula39()));
// }

// class Post {
//   int id;
//   String title;
//   String body;
//   String status;

//   Post({
//     required this.id,
//     required this.title,
//     required this.body,
//     required this.status,
//   });

//   factory Post.fromJson(Map<String, dynamic> json) {
//     return Post(
//       id: json["id"],
//       title: json["title"],
//       body: json["body"],
//       status: json["status"],
//     );
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

//   TextEditingController userIdController = TextEditingController();

//   String resultado = "";

//   Future<void> enviarPost() async {
//     String title = titleController.text.trim();
//     String body = bodyController.text.trim();
//     String status = userIdController.text.trim();

//     if (title.isEmpty || body.isEmpty || status.isEmpty) {
//       setState(() {
//         resultado = "Preenche Título no Conteúdo!";
//       });
//       return;
//     }

//     Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");

//     final response = await http.post(
//       uri,
//       headers: {"Content-Type": "application/json"},
//       body: jsonEncode({"title": title, "body": body, "status": status}),
//     );

//     if (response.statusCode == 201) {
//       Map<String, dynamic> jsonData = jsonDecode(response.body);

//       Post post = Post.fromJson(jsonData);

//       setState(() {
//         resultado =
//             "Post kria ona!\n"
//             "ID: ${post.id}\n"
//             "Title: ${post.title}\n"
//             "status: ${post.status}";
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
//     userIdController.dispose();
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
//               keyboardType: TextInputType.number,
//               decoration: const InputDecoration(
//                 labelText: "numeru",
//                 border: OutlineInputBorder(),
//               ),
//             ),

//             const SizedBox(height: 15),

//             TextField(
//               controller: bodyController,
//               // maxLines: 4,
//               decoration: const InputDecoration(
//                 labelText: "rota",
//                 border: OutlineInputBorder(),
//               ),
//             ),

//             const SizedBox(height: 15),
//             TextField(
//               controller: userIdController,
//               // maxLines: 4,
//               decoration: const InputDecoration(
//                 labelText: "motorista",
//                 border: OutlineInputBorder(),
//               ),
//             ),

//             const SizedBox(height: 20),

//             ElevatedButton(
//               onPressed: enviarPost,
//               child: const Text("regista Mikrolet"),
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
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Aula39()));
}

class Mikrolet {
  int id;
  int numeru;
  String rota;
  String motorista;

  Mikrolet({
    required this.id,
    required this.numeru,
    required this.rota,
    required this.motorista,
  });

  factory Mikrolet.fromJson(Map<String, dynamic> json) {
    return Mikrolet(
      id: json["id"],
      numeru: int.tryParse(json["title"].toString()) ?? 0,
      rota: json["body"] ?? "",
      motorista: json["userId"].toString(),
    );
  }
}

class Aula39 extends StatefulWidget {
  const Aula39({super.key});

  @override
  State<Aula39> createState() => _Aula39State();
}

class _Aula39State extends State<Aula39> {
  TextEditingController idcontroller = TextEditingController();

  TextEditingController numerucontroller = TextEditingController();

  TextEditingController rotacontroller = TextEditingController();

  TextEditingController motoristacontroller = TextEditingController();

  String resultado = "";

  Future<void> enviarPost() async {
    String id = idcontroller.text.trim();
    String numeru = numerucontroller.text.trim();
    String rota = rotacontroller.text.trim();
    String motorista = motoristacontroller.text.trim();

    if (id.isEmpty || numeru.isEmpty || rota.isEmpty || motorista.isEmpty) {
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
        "id": id,
        "title": numeru,
        "body": rota,
        "userId": motorista,
      }),
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = jsonDecode(response.body);

      Mikrolet mikrolet = Mikrolet.fromJson(jsonData);

      setState(() {
        resultado =
            "Post kria ona!\n"
            "ID: ${mikrolet.id}\n"
            "Title: ${mikrolet.numeru}\n"
            "rota: ${mikrolet.rota}\n"
            "status: ${mikrolet.motorista}";
      });
    } else {
      setState(() {
        resultado = "Falha haruka dadus";
      });
    }
  }

  @override
  void dispose() {
    idcontroller.dispose();
    numerucontroller.dispose();
    rotacontroller.dispose();
    motoristacontroller.dispose();

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
              controller: idcontroller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "numeru",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: numerucontroller,
              // maxLines: 4,
              decoration: const InputDecoration(
                labelText: "rota",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),
            TextField(
              controller: rotacontroller,
              // maxLines: 4,
              decoration: const InputDecoration(
                labelText: "motorista",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: motoristacontroller,
              // maxLines: 4,
              decoration: const InputDecoration(
                labelText: "motorista",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: enviarPost,
              child: const Text("regista Mikrolet"),
            ),

            const SizedBox(height: 20),

            Text(resultado, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
