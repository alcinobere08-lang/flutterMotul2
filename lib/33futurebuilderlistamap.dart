import 'package:flutter/material.dart';
// import 'package:mapa_mikrolet/16listmapstringdynamic.dart';
// import 'package:mapa_mikrolet/29radio.dart';

// void main() {
//   runApp(MaterialApp(home: MikroletApp()));
// }

// class MikroletApp extends StatelessWidget {
//   Future<List<Map<String, dynamic>>> bukaMikrolet() async {
//     await Future.delayed(Duration(seconds: 3));

//     return [
//       {"numeru": 5, "rota": "Becora"},
//       {"numeru": 10, "rota": "Comoro"},
//       {"numeru": 12, "rota": "Tasi Tolu"},
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Lista Mikrolet")),

//       body: FutureBuilder<List<Map<String, dynamic>>>(
//         future: bukaMikrolet(),

//         builder: (context, snapshot) {
//           // 1. Loading
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }

//           // 2. Error
//           if (snapshot.hasError) {
//             return Center(child: Text("Erro bainhira buka dadus"));
//           }

//           // 3. Dadus
//           List<Map<String, dynamic>> microlet = snapshot.data!;

//           return ListView.builder(
//             itemCount: microlet.length,

//             itemBuilder: (context, index) {
//               return Card(
//                 margin: EdgeInsets.all(10),

//                 child: ListTile(
//                   leading: Icon(Icons.directions_bus),

//                   title: Text("Mikrolet ${microlet[index]["numeru"]}"),

//                   subtitle: Text("Rota: ${microlet[index]["rota"]}"),
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
// void main() {
//   runApp(MaterialApp(home: MikroletApp()));
// }

// class MikroletApp extends StatelessWidget {
//   Future<List<Map<String, dynamic>>> bukaMikrolet() async {
//     await Future.delayed(Duration(seconds: 5));
//     return [
//       {"numeru": 5, "rota": "becora"},
//       {"numeru": 10, "rota": "comoro"},
//       {"numeru": 12, "rota": "tasi tolu"},
//       {"numeru": 15, "rota": "bidau"},
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("buka Mikrolet broo")),
//       body: FutureBuilder<List<Map<String, dynamic>>>(
//         future: bukaMikrolet(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }
//           if (snapshot.hasError) {
//             return Center(child: Text("error iha ne guru"));
//           }
//           List<Map<String, dynamic>> mikrolet = snapshot.data!;
//           return ListView.builder(
//             itemCount: mikrolet.length,
//             itemBuilder: (context, index) {
//               return Card(
//                 margin: EdgeInsets.all(20),
//                 child: ListTile(
//                   leading: Icon(Icons.car_crash_rounded),
//                   title: Text("Mikrolet ${mikrolet[index]["numeru"]}"),
//                   subtitle: Text("Rota: ${mikrolet[index]["rota"]}"),
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
// void main() {
//   runApp(MaterialApp(home: MikroletApp()));
// }

// class MikroletApp extends StatelessWidget {
//   Future<List<Map<String, dynamic>>> bukaMikrolet() async {
//     await Future.delayed(Duration(seconds: 5));
//     return [
//       {"numeru": 5, "rota": "becora", "motorista": "amanu", "status": "ativu"},
//       {"numeru": 10, "rota": "comoro", "motorista": "ajai", "status": "ativu"},
//       {
//         "numeru": 12,
//         "rota": "tasi tolu",
//         "motorista": "alcino",
//         "status": "ativu",
//       },
//       {"numeru": 15, "rota": "bidau", "motorista": "abe", "status": "ativu"},
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("buka Mikrolet broo")),
//       body: FutureBuilder<List<Map<String, dynamic>>>(
//         future: bukaMikrolet(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }
//           if (snapshot.hasError) {
//             return Center(child: Text("error iha ne guru"));
//           }
//           List<Map<String, dynamic>> mikrolet = snapshot.data!;
//           return ListView.builder(
//             itemCount: mikrolet.length,
//             itemBuilder: (context, index) {
//               return Card(
//                 margin: EdgeInsets.all(20),
//                 child: ListTile(
//                   leading: Icon(Icons.car_crash_rounded),
//                   title: Text("Mikrolet ${mikrolet[index]["numeru"]}"),
//                   subtitle: Text(
//                     "Rota: ${mikrolet[index]["rota"]}\n"
//                     "Motorista: ${mikrolet[index]["motorista"]}\n"
//                     "Status: ${mikrolet[index]["status"]}",
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
void main() {
  runApp(MaterialApp(home: MikroletApp()));
}

class MikroletApp extends StatelessWidget {
  Future<List<Map<String, dynamic>>> bukaMikrolet() async {
    await Future.delayed(Duration(seconds: 5));
    return [
      {"numeru": 5, "rota": "becora", "motorista": "amanu", "status": "ativu"},
      {"numeru": 10, "rota": "comoro", "motorista": "ajai", "status": "ativu"},
      {
        "numeru": 12,
        "rota": "tasi tolu",
        "motorista": "alcino",
        "status": "ativu",
      },
      {"numeru": 15, "rota": "bidau", "motorista": "abe", "status": "ativu"},
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("buka Mikrolet broo")),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: bukaMikrolet(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(height: 20),

                  Text("Buka dadus Mikrolet"),
                ],
              ),
            );
          }
          if (snapshot.hasError) {
            return Center(child: Text("error iha ne guru"));
          }
          List<Map<String, dynamic>> mikrolet = snapshot.data!;
          return ListView.builder(
            itemCount: mikrolet.length,
            itemBuilder: (context, index) {
              return Card(
                margin: EdgeInsets.all(20),
                child: ListTile(
                  leading: Icon(Icons.car_crash_rounded),
                  title: Text("Mikrolet ${mikrolet[index]["numeru"]}"),
                  subtitle: Text(
                    "Rota: ${mikrolet[index]["rota"]}\n"
                    "Motorista: ${mikrolet[index]["motorista"]}\n"
                    "Status: ${mikrolet[index]["status"]}",
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
