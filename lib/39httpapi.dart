// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   runApp(MaterialApp(home: MikroletApp()));
// }

// class Mikrolet {
//   int numeru;
//   String rota;
//   String motorista;
//   String status;

//   Mikrolet({
//     required this.numeru,
//     required this.rota,
//     required this.motorista,
//     required this.status,
//   });

//   factory Mikrolet.fromJson(Map<String, dynamic> json) {
//     return Mikrolet(
//       numeru: json["numeru"],
//       rota: json["rota"],
//       motorista: json["motorista"],
//       status: json["status"],
//     );
//   }
// }

// Future<List<Mikrolet>> bukaMikrolet() async {
//   final response = await http.get(
//     Uri.parse("https://example.com/api/mikrolet"),
//   );

//   if (response.statusCode == 200) {
//     List<dynamic> jsonData = jsonDecode(response.body);

//     List<Mikrolet> mikrolet = jsonData
//         .map((item) => Mikrolet.fromJson(item))
//         .toList();

//     return mikrolet;
//   } else {
//     throw Exception("Falha atu buka dadus Mikrolet");
//   }
// }

// class MikroletApp extends StatefulWidget {
//   const MikroletApp({super.key});

//   @override
//   State<MikroletApp> createState() => _MikroletAppState();
// }

// class _MikroletAppState extends State<MikroletApp> {
//   late Future<List<Mikrolet>> futureMikrolet;

//   @override
//   void initState() {
//     super.initState();

//     futureMikrolet = bukaMikrolet();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Lista Mikrolet")),

//       body: FutureBuilder<List<Mikrolet>>(
//         future: futureMikrolet,

//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }

//           if (snapshot.hasError) {
//             return Center(child: Text("Erru: ${snapshot.error}"));
//           }

//           List<Mikrolet> mikrolet = snapshot.data ?? [];

//           return ListView.builder(
//             itemCount: mikrolet.length,

//             itemBuilder: (context, index) {
//               return Card(
//                 child: ListTile(
//                   leading: Icon(Icons.directions_bus),

//                   title: Text("Mikrolet ${mikrolet[index].numeru}"),

//                   subtitle: Text(
//                     "${mikrolet[index].rota}\n"
//                     "Motorista: ${mikrolet[index].motorista}\n"
//                     "Status: ${mikrolet[index].status}",
//                   ),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// // ezersisiu 1
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   runApp(MaterialApp(home: MikroletApp()));
// }

// class MikroletApp extends StatefulWidget {
//   const MikroletApp({super.key});

//   @override
//   State<MikroletApp> createState() => _MikroletAppState();
// }

// class _MikroletAppState extends State<MikroletApp> {
//   String resultado = "Seidauk buka dadus";

//   Future<void> bukaAPI() async {
//     final response = await http.get(
//       Uri.parse("https://jsonplaceholder.typicode.com/posts"),
//     );

//     if (response.statusCode == 200) {
//       setState(() {
//         resultado = response.body;
//       });
//     } else {
//       setState(() {
//         resultado = "Error: ${response.statusCode}";
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Teste API")),
//       body: Padding(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           children: [
//             ElevatedButton(onPressed: bukaAPI, child: Text("Buka API")),

//             SizedBox(height: 20),

//             Expanded(child: SingleChildScrollView(child: Text(resultado))),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(home: MikroletApp()));
}

class Mikrolet {
  int numeru;
  String rota;
  String motorista;
  int status;
  String destinasaun;

  Mikrolet({
    required this.numeru,
    required this.rota,
    required this.motorista,
    required this.status,
    required this.destinasaun,
  });

  factory Mikrolet.fromJson(Map<String, dynamic> json) {
    return Mikrolet(
      numeru: json["id"],
      rota: json["title"],
      motorista: json["body"],
      status: json["userId"],
      destinasaun: json["title"],
    );
  }
}

Future<List<Mikrolet>> bukaMikrolet() async {
  final response = await http.get(
    Uri.parse("https://jsonplaceholder.typicode.com/posts"),
  );

  if (response.statusCode == 200) {
    List<dynamic> jsonData = jsonDecode(response.body);

    List<Mikrolet> mikrolet = jsonData
        .map((item) => Mikrolet.fromJson(item))
        .toList();

    return mikrolet;
  } else {
    throw Exception("Falha atu buka dadus");
  }
}

class MikroletApp extends StatefulWidget {
  const MikroletApp({super.key});

  @override
  State<MikroletApp> createState() => _MikroletAppState();
}

class _MikroletAppState extends State<MikroletApp> {
  late Future<List<Mikrolet>> futureMikrolet;

  @override
  void initState() {
    super.initState();

    futureMikrolet = bukaMikrolet();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mikrolet")),

      body: FutureBuilder<List<Mikrolet>>(
        future: futureMikrolet,

        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          }

          List<Mikrolet> mikrolet = snapshot.data ?? [];

          return ListView.builder(
            itemCount: mikrolet.length,

            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: Icon(Icons.directions_bus),

                  title: Text("Mikrolet ${mikrolet[index].numeru}"),

                  subtitle: Text(
                    "rota: ${mikrolet[index].rota}\n"
                    "motorista: ${mikrolet[index].motorista}\n"
                    "Status: ${mikrolet[index].status}\n"
                    "destinasaun: ${mikrolet[index].destinasaun}",
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
