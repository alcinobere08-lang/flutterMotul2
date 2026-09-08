// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Aula42()));
// }

// class Aula42 extends StatefulWidget {
//   const Aula42({super.key});

//   @override
//   State<Aula42> createState() => _Aula42State();
// }

// class _Aula42State extends State<Aula42> {
//   final TextEditingController idController = TextEditingController();

//   String resultado = "";

//   Future<void> apagaPost() async {
//     String id = idController.text.trim();

//     // verifica ID
//     if (id.isEmpty) {
//       setState(() {
//         resultado = "Favor hatama ID!";
//       });
//       return;
//     }

//     // URL API
//     final uri = Uri.parse("https://jsonplaceholder.typicode.com/posts/$id");

//     // DELETE
//     final response = await http.delete(uri);

//     // verifica resposta
//     if (response.statusCode == 200) {
//       setState(() {
//         resultado = "Post ID $id apaga ona!";
//       });
//     } else {
//       setState(() {
//         resultado = "Falha apaga Post!";
//       });
//     }
//   }

//   @override
//   void dispose() {
//     idController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Aula 42 - HTTP DELETE")),

//       body: Padding(
//         padding: const EdgeInsets.all(20),

//         child: Column(
//           children: [
//             TextField(
//               controller: idController,
//               keyboardType: TextInputType.number,
//               decoration: const InputDecoration(
//                 labelText: "ID Post",
//                 border: OutlineInputBorder(),
//               ),
//             ),

//             const SizedBox(height: 20),

//             ElevatedButton(
//               onPressed: apagaPost,
//               child: const Text("Apaga Post"),
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
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Aula42()));
// }

// class Aula42 extends StatefulWidget {
//   const Aula42({super.key});

//   @override
//   State<Aula42> createState() => _Aula42State();
// }

// class _Aula42State extends State<Aula42> {
//   final TextEditingController idController = TextEditingController();

//   String resultado = "";

//   Future<void> apagaPost() async {
//     String id = idController.text.trim();

//     // verifica ID
//     if (id.isEmpty) {
//       setState(() {
//         resultado = "Favor hatama ID!";
//       });
//       return;
//     }

//     // URL API
//     final uri = Uri.parse("https://jsonplaceholder.typicode.com/posts/$id");

//     // DELETE
//     final response = await http.delete(uri);

//     // verifica resposta
//     if (response.statusCode == 200) {
//       setState(() {
//         resultado = "Post ID $id apaga ona!";
//       });
//     } else {
//       setState(() {
//         resultado = "Falha apaga Post!";
//       });
//     }
//   }

//   @override
//   void dispose() {
//     idController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Aula 42 - HTTP DELETE")),

//       body: Padding(
//         padding: const EdgeInsets.all(20),

//         child: Column(
//           children: [
//             Text("id mikrolet", style: TextStyle(fontSize: 24)),
//             SizedBox(height: 20),
//             TextField(
//               controller: idController,
//               keyboardType: TextInputType.number,
//               decoration: const InputDecoration(
//                 labelText: "ID Post",
//                 border: OutlineInputBorder(),
//               ),
//             ),

//             const SizedBox(height: 20),

//             ElevatedButton(
//               onPressed: apagaPost,

//               child: const Text("Apaga Post"),

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
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Aula42()));
}

class Aula42 extends StatefulWidget {
  const Aula42({super.key});

  @override
  State<Aula42> createState() => _Aula42State();
}

class _Aula42State extends State<Aula42> {
  final TextEditingController idController = TextEditingController();

  String resultado = "";

  Future<void> apagaPost() async {
    String id = idController.text.trim();

    // verifica ID
    if (id.isEmpty) {
      setState(() {
        resultado = "Favor hatama ID!";
      });
      return;
    }

    // URL API
    final uri = Uri.parse("https://jsonplaceholder.typicode.com/posts/$id");

    // DELETE
    final response = await http.delete(uri);

    // verifica resposta
    if (response.statusCode == 200) {
      setState(() {
        resultado = "Post ID $id apaga ona!";
      });
    } else {
      setState(() {
        resultado = "Falha apaga Post!";
      });
    }
  }

  @override
  void dispose() {
    idController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Aula 42 - HTTP DELETE")),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            Text("id mikrolet", style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            TextField(
              controller: idController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "ID Post",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text("Konfirmasaun"),
                      content: const Text(
                        "Ita hakarak apaga Mikrolet ida ne'e?",
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Kansela"),
                        ),

                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);

                            // depois mak chama function DELETE
                            apagaPost();
                          },
                          child: const Text("Apaga"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text("Apaga Mikrolet"),
            ),

            const SizedBox(height: 20),

            Text(resultado, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
