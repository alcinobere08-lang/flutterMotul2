// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// // import 'package:mapa_mikrolet/37tojson.dart';

// void main() {
//   runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Mikroletjj()));
// }

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

// class ApiService {
//   final String baseUrl = "https://jsonplaceholder.typicode.com";

//   // GET
//   Future<Mikrolet> bukaMikrolet(int id) async {
//     final uri = Uri.parse("$baseUrl/posts/$id");

//     final response = await http.get(uri);

//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body);

//       return Mikrolet.fromJson(data);
//     } else {
//       throw Exception("Falha buka Mikrolet");
//     }
//   }

//   //POST
//   Future<Mikrolet> registaMikrolet(
//     String numeru,
//     String rota,
//     String motorista,
//   ) async {
//     final uri = Uri.parse("$baseUrl/posts");

//     final response = await http.post(
//       uri,
//       headers: {"Content-Type": "application/json"},
//       body: jsonEncode({"title": numeru, "body": rota, "userId": motorista}),
//     );

//     if (response.statusCode == 201) {
//       final data = jsonDecode(response.body);

//       return Mikrolet.fromJson(data);
//     } else {
//       throw Exception("Falha regista Mikrolet");
//     }
//   }

//   //PUT
//   Future<Mikrolet> atualizaMikrolet(
//     int id,
//     String numeru,
//     String rota,
//     String motorista,
//   ) async {
//     final uri = Uri.parse("$baseUrl/posts/$id");

//     final response = await http.put(
//       uri,
//       headers: {"Content-Type": "application/json"},
//       body: jsonEncode({"title": numeru, "body": rota, "userId": motorista}),
//     );

//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body);

//       return Mikrolet.fromJson(data);
//     } else {
//       throw Exception("Falha atualiza Mikrolet");
//     }
//   }

//   //PATCH
//   Future<Mikrolet> atualizaMotorista(int id, String motorista) async {
//     final uri = Uri.parse("$baseUrl/posts/$id");

//     final response = await http.patch(
//       uri,
//       headers: {"Content-Type": "application/json"},
//       body: jsonEncode({"userId": motorista}),
//     );

//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body);

//       return Mikrolet.fromJson(data);
//     } else {
//       throw Exception("Falha atualiza motorista");
//     }
//   }

//   //DELETE
//   Future<void> apagaMikrolet(int id) async {
//     final uri = Uri.parse("$baseUrl/posts/$id");

//     final response = await http.delete(uri);

//     if (response.statusCode == 200) {
//       return;
//     } else {
//       throw Exception("Falha apaga Mikrolet");
//     }
//   }
// }

// //UI

// class Mikroletjj extends StatefulWidget {
//   const Mikroletjj({super.key});

//   @override
//   State<Mikroletjj> createState() => _MikroletjjState();
// }

// class _MikroletjjState extends State<Mikroletjj> {
//   TextEditingController idController = TextEditingController();
//   TextEditingController numcontroller = TextEditingController();
//   TextEditingController rotcontroller = TextEditingController();
//   TextEditingController motcontroller = TextEditingController();

//   final ApiService apiService = ApiService();
//   String resultado = "";

//   Future<void> registaMikrolet() async {
//     String numeru = numcontroller.text.toString();
//     String rota = rotcontroller.text.trim();
//     String motorista = motcontroller.text.toString();

//     if (numeru.isEmpty || rota.isEmpty || motorista.isEmpty) {
//       setState(() {
//         resultado = "Preenche  Conteúdo!";
//       });
//       return;
//     }
//     try {
//       Mikrolet mikrolet = await apiService.registaMikrolet(
//         "05",
//         "Becora - Comoro",
//         "Alcino",
//       );
//       await apiService.apagaMikrolet(1);

//       setState(() {
//         resultado =
//             "ID: ${mikrolet.id}\n"
//             "Numeru: ${mikrolet.numeru}\n"
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
//   void dispose() {
//     // idController.dispose();
//     numcontroller.dispose();
//     rotcontroller.dispose();
//     motcontroller.dispose();
//     super.dispose();
//   }

//   Future<void> apagaMikrolet() async {
//     String numeru = numcontroller.text.trim();

//     // verifica ID
//     if (numeru.isEmpty) {
//       setState(() {
//         resultado = "Favor hatama ID!";
//       });
//       return;
//     }

//     // URL API
//     final uri = Uri.parse("https://jsonplaceholder.typicode.com/posts/$numeru");

//     // DELETE
//     final response = await http.delete(uri);

//     // verifica resposta
//     if (response.statusCode == 200) {
//       setState(() {
//         resultado = "Post ID $numeru apaga ona!";
//       });
//     } else {
//       setState(() {
//         resultado = "Falha apaga Post!";
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Aula 44 - API Service")),

//       body: Padding(
//         padding: const EdgeInsets.all(16),

//         child: Column(
//           children: [
//             TextField(
//               controller: numcontroller,
//               keyboardType: TextInputType.number,
//               decoration: const InputDecoration(
//                 labelText: "mikrolet",
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 20),
//             TextField(
//               controller: rotcontroller,
//               // keyboardType: TextInputType.number,
//               decoration: const InputDecoration(
//                 labelText: "rota",
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 10),
//             TextField(
//               controller: motcontroller,
//               // keyboardType: TextInputType.number,
//               decoration: const InputDecoration(
//                 labelText: "motorista",
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: registaMikrolet,
//               child: const Text("regista"),
//             ),

//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: apagaMikrolet,
//               child: const Text("apaga"),
//             ),

//             const SizedBox(height: 30),

//             Text(resultado, style: const TextStyle(fontSize: 18)),
//           ],
//         ),
//       ),
//     );
//   }
// }

//ezemplu kompletu
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Aula45()));
}

// ======================================================
// MODEL
// ======================================================

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

// ======================================================
// API SERVICE
// ======================================================

class ApiService {
  final String baseUrl = "https://jsonplaceholder.typicode.com";

  // ====================================================
  // GET
  // ====================================================

  Future<Mikrolet> bukaMikrolet(int id) async {
    final uri = Uri.parse("$baseUrl/posts/$id");

    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      return Mikrolet.fromJson(data);
    } else {
      throw Exception("Falha buka Mikrolet");
    }
  }

  // ====================================================
  // POST
  // ====================================================

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
      throw Exception("Falha regista Mikrolet");
    }
  }

  // ====================================================
  // PUT
  // ====================================================

  Future<Mikrolet> atualizaMikrolet(
    int id,
    String numeru,
    String rota,
    String motorista,
  ) async {
    final uri = Uri.parse("$baseUrl/posts/$id");

    final response = await http.put(
      uri,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"title": numeru, "body": rota, "userId": motorista}),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      return Mikrolet.fromJson(data);
    } else {
      throw Exception("Falha atualiza Mikrolet");
    }
  }

  // ====================================================
  // PATCH
  // ====================================================

  Future<Mikrolet> atualizaMotorista(int id, String motorista) async {
    final uri = Uri.parse("$baseUrl/posts/$id");

    final response = await http.patch(
      uri,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"userId": motorista}),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      return Mikrolet.fromJson(data);
    } else {
      throw Exception("Falha atualiza motorista");
    }
  }

  // ====================================================
  // DELETE
  // ====================================================

  Future<void> apagaMikrolet(int id) async {
    final uri = Uri.parse("$baseUrl/posts/$id");

    final response = await http.delete(uri);

    if (response.statusCode == 200) {
      return;
    } else {
      throw Exception("Falha apaga Mikrolet");
    }
  }
}

// ======================================================
// UI
// ======================================================

class Aula45 extends StatefulWidget {
  const Aula45({super.key});

  @override
  State<Aula45> createState() => _Aula45State();
}

class _Aula45State extends State<Aula45> {
  final ApiService apiService = ApiService();

  // Controllers
  final idController = TextEditingController();
  final numeruController = TextEditingController();
  final rotaController = TextEditingController();
  final motoristaController = TextEditingController();

  String resultado = "";

  // ====================================================
  // GET
  // ====================================================

  Future<void> bukaDadus() async {
    String idText = idController.text.trim();

    if (idText.isEmpty) {
      setState(() {
        resultado = "Favor hatama ID!";
      });
      return;
    }

    int id = int.parse(idText);

    try {
      Mikrolet mikrolet = await apiService.bukaMikrolet(id);

      setState(() {
        resultado =
            "GET - Buka Mikrolet\n\n"
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

  // ====================================================
  // POST
  // ====================================================

  Future<void> registaDadus() async {
    String numeru = numeruController.text.trim();
    String rota = rotaController.text.trim();
    String motorista = motoristaController.text.trim();

    if (numeru.isEmpty || rota.isEmpty || motorista.isEmpty) {
      setState(() {
        resultado = "Favor preenche dadus hotu!";
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
            "POST - Mikrolet Registadu\n\n"
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

  // ====================================================
  // PUT
  // ====================================================

  Future<void> atualizaDadus() async {
    String idText = idController.text.trim();
    String numeru = numeruController.text.trim();
    String rota = rotaController.text.trim();
    String motorista = motoristaController.text.trim();

    if (idText.isEmpty || numeru.isEmpty || rota.isEmpty || motorista.isEmpty) {
      setState(() {
        resultado = "Favor preenche dadus hotu!";
      });
      return;
    }

    int id = int.parse(idText);

    try {
      Mikrolet mikrolet = await apiService.atualizaMikrolet(
        id,
        numeru,
        rota,
        motorista,
      );

      setState(() {
        resultado =
            "PUT - Mikrolet Atualizadu\n\n"
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

  // ====================================================
  // PATCH
  // ====================================================

  Future<void> atualizaMotorista() async {
    String idText = idController.text.trim();
    String motorista = motoristaController.text.trim();

    if (idText.isEmpty || motorista.isEmpty) {
      setState(() {
        resultado = "Favor hatama ID no motorista!";
      });
      return;
    }

    int id = int.parse(idText);

    try {
      Mikrolet mikrolet = await apiService.atualizaMotorista(id, motorista);

      setState(() {
        resultado =
            "PATCH - Motorista Atualizadu\n\n"
            "ID: ${mikrolet.id}\n"
            "Motorista: ${mikrolet.motorista}";
      });
    } catch (e) {
      setState(() {
        resultado = "Erro: $e";
      });
    }
  }

  // ====================================================
  // DELETE
  // ====================================================

  Future<void> apagaDadus() async {
    String idText = idController.text.trim();

    if (idText.isEmpty) {
      setState(() {
        resultado = "Favor hatama ID!";
      });
      return;
    }

    int id = int.parse(idText);

    try {
      await apiService.apagaMikrolet(id);

      setState(() {
        resultado = "DELETE - Mikrolet ID $id apaga ona!";
      });
    } catch (e) {
      setState(() {
        resultado = "Erro: $e";
      });
    }
  }

  // ====================================================
  // DISPOSE
  // ====================================================

  @override
  void dispose() {
    idController.dispose();
    numeruController.dispose();
    rotaController.dispose();
    motoristaController.dispose();

    super.dispose();
  }

  // ====================================================
  // UI
  // ====================================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Aula 45 - CRUD ApiService")),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [
            // ID
            TextField(
              controller: idController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "ID Mikrolet",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            // NUMERU
            TextField(
              controller: numeruController,
              decoration: const InputDecoration(
                labelText: "Numeru Mikrolet",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            // ROTA
            TextField(
              controller: rotaController,
              decoration: const InputDecoration(
                labelText: "Rota",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            // MOTORISTA
            TextField(
              controller: motoristaController,
              decoration: const InputDecoration(
                labelText: "Motorista",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            // GET
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: bukaDadus,
                child: const Text("GET - Buka Mikrolet"),
              ),
            ),

            // POST
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: registaDadus,
                child: const Text("POST - Regista Mikrolet"),
              ),
            ),

            // PUT
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: atualizaDadus,
                child: const Text("PUT - Atualiza Mikrolet"),
              ),
            ),

            // PATCH
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: atualizaMotorista,
                child: const Text("PATCH - Atualiza Motorista"),
              ),
            ),

            // DELETE
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: apagaDadus,
                child: const Text("DELETE - Apaga Mikrolet"),
              ),
            ),

            const SizedBox(height: 30),

            const Divider(),

            const SizedBox(height: 20),

            Text(resultado, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
