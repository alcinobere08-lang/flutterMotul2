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

//   factory Mikrolet.fromJson(Map<String, dynamic> json) {
//     return Mikrolet(
//       numeru: json["numeru"],
//       rota: json["rota"],
//       motorista: json["motorista"],
//       status: json["status"],
//     );
//   }
// }

// // SIMULA API
// Future<List<Mikrolet>> bukaMikrolet() async {
//   await Future.delayed(Duration(seconds: 3));

//   String data = '''
//   [
//     {
//       "numeru": 5,
//       "rota": "Becora",
//       "motorista": "Asis",
//       "status": "Ativu"
//     },
//     {
//       "numeru": 10,
//       "rota": "Comoro",
//       "motorista": "Joao",
//       "status": "Ativu"
//     },
//     {
//       "numeru": 12,
//       "rota": "Tasi Tolu",
//       "motorista": "Alberto",
//       "status": "Ativu"
//     }
//   ]
//   ''';

//   List<dynamic> jsonData = jsonDecode(data);

//   List<Mikrolet> mikrolet = jsonData
//       .map((item) => Mikrolet.fromJson(item))
//       .toList();

//   return mikrolet;
// }

// class MikroletApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Dadus Mikrolet")),

//       body: FutureBuilder<List<Mikrolet>>(
//         future: bukaMikrolet(),

//         builder: (context, snapshot) {
//           // 1. LOADING
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }

//           // 2. ERROR
//           if (snapshot.hasError) {
//             return Center(child: Text("Erru: ${snapshot.error}"));
//           }

//           // 3. DATA
//           List<Mikrolet> mikrolet = snapshot.data ?? [];

//           return ListView.builder(
//             itemCount: mikrolet.length,

//             itemBuilder: (context, index) {
//               return Card(
//                 child: ListTile(
//                   leading: Icon(Icons.directions_bus),

//                   title: Text("Mikrolet ${mikrolet[index].numeru}"),

//                   subtitle: Text(
//                     "Rota: ${mikrolet[index].rota}\n"
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

//ezersisiu 1
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'dart:convert';

// void main() {
//   runApp(MaterialApp(home: MikroletApp()));
// }

// class Mikrolet {
//   final int numeru;
//   final String rota;
//   final String status;

//   Mikrolet({required this.numeru, required this.rota, required this.status});

//   factory Mikrolet.fromJson(Map<String, dynamic> json) {
//     return Mikrolet(
//       numeru: json["numeru"],
//       rota: json["rota"],
//       status: json["status"],
//     );
//   }
// }

// Future<List<Mikrolet>> bukaMikrolet() async {
//   await Future.delayed(Duration(seconds: 4));

//   String data = '''
// [
// {
// "numeru": 5,
// "rota": "Becora",
// "status" : "ativu"
// },
// {
// "numeru": 4,
// "rota": "ailok laran",
// "status" : "ativu"
// }
// ]
// ''';

//   List<dynamic> jsonData = jsonDecode(data);
//   List<Mikrolet> mikrolet = jsonData
//       .map((item) => Mikrolet.fromJson(item))
//       .toList();

//   return mikrolet;
// }

// class MikroletApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("hahaha")),
//       body: FutureBuilder<List<Mikrolet>>(
//         future: bukaMikrolet(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }
//           if (snapshot.hasError) {
//             return Center(child: Text("error: ${snapshot.error}"));
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
//                     "rota: ${mikrolet[index].rota}\n"
//                     "status: ${mikrolet[index].status}",
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

//ezersisiu 2
// import 'package:flutter/material.dart';
// import 'dart:convert';

// void main() {
//   runApp(MaterialApp(home: MikroletApp()));
// }

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
//   await Future.delayed(Duration(seconds: 4));

//   String data = '''
// [
// {
// "numeru": 5,
// "rota": "Becora",
// "motorista": "amanu",
// "status" : "ativu"
// },
// {
// "numeru": 4,
// "rota": "ailok laran",
// "motorista" : "akoko",
// "status" : "ativu"
// }
// ]
// ''';

//   List<dynamic> jsonData = jsonDecode(data);
//   List<Mikrolet> mikrolet = jsonData
//       .map((item) => Mikrolet.fromJson(item))
//       .toList();

//   return mikrolet;
// }

// class MikroletApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("hahaha")),
//       body: FutureBuilder<List<Mikrolet>>(
//         future: bukaMikrolet(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }
//           if (snapshot.hasError) {
//             return Center(child: Text("error: ${snapshot.error}"));
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
//                     "rota: ${mikrolet[index].rota}\n"
//                     "rota: ${mikrolet[index].motorista}\n"
//                     "status: ${mikrolet[index].status}",
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

//dezafiu extra
import 'package:flutter/material.dart';
import 'dart:convert';

void main() {
  runApp(MaterialApp(home: MikroletApp()));
}

class Mikrolet {
  final int numeru;
  final String rota;
  final String motorista;
  final String status;
  final String destinasaun;

  Mikrolet({
    required this.numeru,
    required this.rota,
    required this.motorista,
    required this.status,
    required this.destinasaun,
  });

  factory Mikrolet.fromJson(Map<String, dynamic> json) {
    return Mikrolet(
      numeru: json["numeru"],
      rota: json["rota"],
      motorista: json["motorista"],
      status: json["status"],
      destinasaun: json["destinasaun"],
    );
  }
}

Future<List<Mikrolet>> bukaMikrolet() async {
  await Future.delayed(Duration(seconds: 3));

  String data = '''
[
{
"numeru": 5,
"rota": "Becora",
"motorista": "amanu",
"status" : "ativu",
"destinasaun": "Comoro"
},
{
"numeru": 10,
"rota": "comoro",
"motorista" : "akoko",
"status" : "ativu",
"destinasaun": "tas tolu"
},
{
"numeru": 12,
"rota": "Tasi tolu",
"motorista": "amanu",
"status" : "ativu",
"destinasaun": "Bekora"
},
{
"numeru": 15,
"rota": "Becora",
"motorista": "amanu",
"status" : "ativu",
"destinasaun": "Bidau"
}
]
''';

  List<dynamic> jsonData = jsonDecode(data);
  List<Mikrolet> mikrolet = jsonData
      .map((item) => Mikrolet.fromJson(item))
      .toList();

  return mikrolet;
}

class MikroletApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hahaha")),
      body: FutureBuilder<List<Mikrolet>>(
        future: bukaMikrolet(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text("error: ${snapshot.error}"));
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
                    "rota: ${mikrolet[index].motorista}\n"
                    "status: ${mikrolet[index].status}\n"
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
