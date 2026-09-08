// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Aula40()));
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

// class Aula40 extends StatefulWidget {
//   const Aula40({super.key});

//   @override
//   State<Aula40> createState() => _Aula40State();
// }

// class _Aula40State extends State<Aula40> {
//   TextEditingController idController = TextEditingController();

//   TextEditingController titleController = TextEditingController();

//   TextEditingController bodyController = TextEditingController();

//   String resultado = "";

//   Future<void> atualizaPost() async {
//     String id = idController.text.trim();
//     String title = titleController.text.trim();
//     String body = bodyController.text.trim();

//     if (id.isEmpty || title.isEmpty || body.isEmpty) {
//       setState(() {
//         resultado = "Preenche dadus hotu!";
//       });
//       return;
//     }

//     Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/posts/$id");

//     final response = await http.put(
//       uri,
//       headers: {"Content-Type": "application/json"},
//       body: jsonEncode({
//         "id": int.parse(id),
//         "title": title,
//         "body": body,
//         "userId": 1,
//       }),
//     );

//     if (response.statusCode == 200) {
//       Map<String, dynamic> jsonData = jsonDecode(response.body);

//       Post post = Post.fromJson(jsonData);

//       setState(() {
//         resultado =
//             "Post atualiza ona!\n"
//             "ID: ${post.id}\n"
//             "Title: ${post.title}\n"
//             "Body: ${post.body}";
//       });
//     } else {
//       setState(() {
//         resultado = "Falha atualiza post";
//       });
//     }
//   }

//   @override
//   void dispose() {
//     idController.dispose();
//     titleController.dispose();
//     bodyController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Aula 40 - PUT")),

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
//                 labelText: "Title",
//                 border: OutlineInputBorder(),
//               ),
//             ),

//             const SizedBox(height: 15),

//             TextField(
//               controller: bodyController,
//               maxLines: 4,
//               decoration: const InputDecoration(
//                 labelText: "Body",
//                 border: OutlineInputBorder(),
//               ),
//             ),

//             const SizedBox(height: 20),

//             ElevatedButton(
//               onPressed: atualizaPost,
//               child: const Text("Atualiza"),
//             ),

//             const SizedBox(height: 20),

//             Text(resultado, style: const TextStyle(fontSize: 18)),
//           ],
//         ),
//       ),
//     );
//   }
// }

//ezersisiu 2
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Aula40()));
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
      numeru: int.parse(json["title"].toString()),
      rota: json["body"],
      motorista: json["userId"].toString(),
    );
  }
}

class Aula40 extends StatefulWidget {
  const Aula40({super.key});

  @override
  State<Aula40> createState() => _Aula40State();
}

class _Aula40State extends State<Aula40> {
  TextEditingController idController = TextEditingController();
  TextEditingController numeruController = TextEditingController();
  TextEditingController rotaController = TextEditingController();
  TextEditingController motoristaController = TextEditingController();

  String resultado = "";

  Future<void> atualizaMikrolet() async {
    String id = idController.text.trim();
    String numeru = numeruController.text.trim();
    String rota = rotaController.text.trim();
    String motorista = motoristaController.text.trim();

    if (id.isEmpty || numeru.isEmpty || rota.isEmpty || motorista.isEmpty) {
      setState(() {
        resultado = "Preenche dadus hotu!";
      });
      return;
    }

    Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/posts/$id");

    final response = await http.put(
      uri,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "id": int.parse(id),
        "title": int.parse(numeru),
        "body": rota,
        "userId": motorista,
      }),
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = jsonDecode(response.body);

      Mikrolet mikrolet = Mikrolet.fromJson(jsonData);

      setState(() {
        resultado =
            "Mikrolet atualiza ona!\n"
            "ID: ${mikrolet.id}\n"
            "Numeru: ${mikrolet.numeru}\n"
            "Rota: ${mikrolet.rota}\n"
            "Motorista: ${mikrolet.motorista}";
      });
    } else {
      setState(() {
        resultado = "Falha atualiza Mikrolet";
      });
    }
  }

  @override
  void dispose() {
    idController.dispose();
    numeruController.dispose();
    rotaController.dispose();
    motoristaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Aula 40 - PUT Mikrolet")),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [
            TextField(
              controller: idController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "ID",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: numeruController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Numeru Mikrolet",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: rotaController,
              decoration: const InputDecoration(
                labelText: "Rota",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: motoristaController,
              decoration: const InputDecoration(
                labelText: "Motorista",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: atualizaMikrolet,
              child: const Text("Atualiza Mikrolet"),
            ),

            const SizedBox(height: 20),

            Text(resultado, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
