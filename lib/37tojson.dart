// import 'dart:convert';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(home: MikroletApp()));
// }

// // MODEL CLASS
// class Mikrolet {
//   final int numeru;
//   final String rota;
//   final String motorista;
//   final String status;

//   Mikrolet({
//     required this.numeru,
//     required this.rota,
//     required this.motorista,
//     required this.status,
//   });

//   // JSON → OBJECT
//   factory Mikrolet.fromJson(Map<String, dynamic> json) {
//     return Mikrolet(
//       numeru: json["numeru"],
//       rota: json["rota"],
//       motorista: json["motorista"],
//       status: json["status"],
//     );
//   }

//   // OBJECT → MAP
//   Map<String, dynamic> toJson() {
//     return {
//       "numeru": numeru,
//       "rota": rota,
//       "motorista": motorista,
//       "status": status,
//     };
//   }
// }

// class MikroletApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // 1. JSON
//     String data = '''
//     {
//       "numeru": 5,
//       "rota": "Becora",
//       "motorista": "Asis",
//       "status": "Ativu"
//     }
//     ''';

//     // 2. JSON → MAP
//     Map<String, dynamic> jsonData = jsonDecode(data);

//     // 3. MAP → MIKROLET OBJECT
//     Mikrolet mikrolet = Mikrolet.fromJson(jsonData);

//     // 4. MIKROLET OBJECT → MAP
//     Map<String, dynamic> mapData = mikrolet.toJson();

//     // 5. MAP → JSON STRING
//     String jsonResult = jsonEncode(mapData);

//     return Scaffold(
//       appBar: AppBar(title: Text("FromJson + ToJson")),

//       body: Padding(
//         padding: EdgeInsets.all(20),

//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,

//           children: [
//             Text(
//               "DADUS MIKROLET",
//               style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//             ),

//             SizedBox(height: 20),

//             Text("Numeru: ${mikrolet.numeru}"),

//             Text("Rota: ${mikrolet.rota}"),

//             Text("Motorista: ${mikrolet.motorista}"),

//             Text("Status: ${mikrolet.status}"),

//             SizedBox(height: 30),

//             Text(
//               "JSON RESULTADU:",
//               style: TextStyle(fontWeight: FontWeight.bold),
//             ),

//             SizedBox(height: 10),

//             Text(jsonResult),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:convert';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Mikroletjj()));
}

class Mikrolet {
  final int numeru;
  final String rota;
  final String motorista;
  final String status;

  Mikrolet({
    required this.numeru,
    required this.rota,
    required this.motorista,
    required this.status,
  });

  factory Mikrolet.fromJson(Map<String, dynamic> Json) {
    return Mikrolet(
      numeru: Json["numeru"],
      rota: Json["rota"],
      motorista: Json["motorista"],
      status: Json["status"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "numeru": numeru,
      "rota": rota,
      "motorista": motorista,
      "status": status,
    };
  }
}

class Mikroletjj extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String data = '''
[
  {
    "numeru": 5,
    "rota": "Becora",
    "motorista": "Asis",
    "status": "Ativu"
  },
  {
    "numeru": 10,
    "rota": "Comoro",
    "motorista": "Joao",
    "status": "Ativu"
  },
  {
    "numeru": 12,
    "rota": "Tasi Tolu",
    "motorista": "Alberto",
    "status": "Ativu"
  }
]
''';
    List<dynamic> jsonData = jsonDecode(data);

    List<Mikrolet> mikrolet = jsonData
        .map((item) => Mikrolet.fromJson(item))
        .toList();

    // 4. MIKROLET OBJECT → MAP
    List<Map<String, dynamic>> mapData = mikrolet
        .map((item) => item.toJson())
        .toList();

    // 5. MAP → JSON STRING
    String jsonResult = jsonEncode(mapData);

    return Scaffold(
      appBar: AppBar(title: Text("aprende bro lae o mate")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.directions),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: mikrolet.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: Icon(Icons.motorcycle),
                    title: Text(
                      "Mikrolet ${mikrolet[index].numeru}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    subtitle: Text(
                      "Rota: ${mikrolet[index].rota}\n"
                      "Motorista: ${mikrolet[index].motorista}\n"
                      "Status: ${mikrolet[index].status}",
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          Text(jsonResult),
        ],
      ),
    );
  }
}
