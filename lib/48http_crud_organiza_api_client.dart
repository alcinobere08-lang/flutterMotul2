// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Aula44()));
// }

// // ===============================
// // MODEL
// // ===============================

// class Mikrolet {
//   int id;
//   String numeru;
//   String rota;
//   String motorista;

//   Mikrolet({
//     required this.id,
//     required this.numeru,
//     required this.rota,
//     required this.motorista,
//   });

//   factory Mikrolet.fromJson(Map<String, dynamic> json) {
//     return Mikrolet(
//       id: json["id"],
//       numeru: json["title"].toString(),
//       rota: json["body"] ?? "",
//       motorista: json["userId"].toString(),
//     );
//   }
// }

// // ===============================
// // API SERVICE
// // ===============================

// class ApiService {
//   final String baseUrl = "https://jsonplaceholder.typicode.com";

//   Future<Mikrolet> bukaMikrolet() async {
//     final uri = Uri.parse("$baseUrl/posts/1");

//     final response = await http.get(uri);

//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body);

//       return Mikrolet.fromJson(data);
//     } else {
//       throw Exception("Falha buka Mikrolet");
//     }
//   }
// }

// // ===============================
// // UI
// // ===============================

// class Aula44 extends StatefulWidget {
//   const Aula44({super.key});

//   @override
//   State<Aula44> createState() => _Aula44State();
// }

// class _Aula44State extends State<Aula44> {
//   final ApiService apiService = ApiService();

//   String resultado = "";

//   Future<void> bukaDadus() async {
//     try {
//       Mikrolet mikrolet = await apiService.bukaMikrolet();

//       setState(() {
//         resultado =
//             "ID: ${mikrolet.id}\n"
//             "Mikrolet: ${mikrolet.numeru}\n"
//             "Rota: ${mikrolet.rota}\n"
//             "Motorista: ${mikrolet.motorista}";
//       });
//     } catch (e) {
//       setState(() {
//         resultado = "Erro: $e";
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Aula 44 - API Service")),

//       body: Padding(
//         padding: const EdgeInsets.all(20),

//         child: Column(
//           children: [
//             ElevatedButton(
//               onPressed: bukaDadus,
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
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Aula44()));
}

// ===============================
// MODEL
// ===============================

class Mikrolet {
  int id;
  String numeru;
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
      numeru: json["title"].toString(),
      rota: json["body"] ?? "",
      motorista: json["userId"].toString(),
    );
  }
}

// ===============================
// API SERVICE
// ===============================

class ApiService {
  final String baseUrl = "https://jsonplaceholder.typicode.com";

  Future<Mikrolet> registaMikrolet(
    String numeru,
    String rota,
    String motorista,
  ) async {
    final uri = Uri.parse("$baseUrl/posts");

    final response = await http.post(
      uri,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"title": numeru, "body": rota, "userId": motorista}),
    );

    if (response.statusCode == 201) {
      final data = jsonDecode(response.body);

      return Mikrolet.fromJson(data);
    } else {
      throw Exception("Falha buka Mikrolet");
    }
  }
}

// ===============================
// UI
// ===============================

class Aula44 extends StatefulWidget {
  const Aula44({super.key});

  @override
  State<Aula44> createState() => _Aula44State();
}

class _Aula44State extends State<Aula44> {
  TextEditingController numercontroller = TextEditingController();
  TextEditingController rotacontroller = TextEditingController();
  TextEditingController motoristacontroller = TextEditingController();

  final ApiService apiService = ApiService();

  String resultado = "";

  Future<void> registaMikrolet() async {
    String numeru = numercontroller.text.toString();
    String rota = rotacontroller.text.trim();
    String motorista = motoristacontroller.text.toString();

    if (numeru.isEmpty || rota.isEmpty || motorista.isEmpty) {
      setState(() {
        resultado = "Preenche  Conteúdo!";
      });
      return;
    }
    try {
      Mikrolet mikrolet = await apiService.registaMikrolet(
        numeru,
        rota,
        motorista,
      );

      setState(() {
        resultado =
            "ID: ${mikrolet.id}\n"
            "Numeru: ${mikrolet.numeru}\n"
            "Rota: ${mikrolet.rota}\n"
            "Motorista: ${mikrolet.motorista}";
      });
    } catch (e) {
      setState(() {
        resultado = "Erro: $e";
      });
    }
  }

  @override
  void dispose() {
    numercontroller.dispose();
    rotacontroller.dispose();
    motoristacontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Aula 44 - API Service")),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [
            TextField(
              controller: numercontroller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "mikrolet",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: rotacontroller,
              // keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "rota",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: motoristacontroller,
              // keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "motorista",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: registaMikrolet,
              child: const Text("regista"),
            ),

            const SizedBox(height: 30),

            Text(resultado, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
