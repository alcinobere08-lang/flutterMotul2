import 'dart:convert';
import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(home: JsonApp()));
// }

// class JsonApp extends StatelessWidget {
//   String data = '''
//   [
//     {
//       "numeru": 5,
//       "rota": "Becora",
//       "motorista": "amanu",
//       "stats" : "haahaha"
//     },
//     {
//       "numeru": 10,
//       "rota": "Comoro",
//             "motorista": "amanu",
//       "stats" : "haahaha"
//     },
//     {
//       "numeru": 12,
//       "rota": "Tasi Tolu",
//             "motorista": "amanu",
//       "stats" : "haahaha"
//     }
//   ]
//   ''';

//   @override
//   Widget build(BuildContext context) {
//     List<Map<String, dynamic>> mikrolet = List<Map<String, dynamic>>.from(
//       jsonDecode(data),
//     );

//     return Scaffold(
//       appBar: AppBar(title: Text("JSON Mikrolet")),
//       body: ListView.builder(
//         itemCount: mikrolet.length,
//         itemBuilder: (context, index) {
//           return Card(
//             margin: EdgeInsets.all(20),
//             child: ListTile(
//               leading: Icon(Icons.directions_bus),
//               title: Text("Mikrolet ${mikrolet[index]["numeru"]}"),
//               subtitle: Text(
//                 "Rota: ${mikrolet[index]["rota"]}\n"
//                 "Motorista: ${mikrolet[index]["motorista"]}\n"
//                 "Status: ${mikrolet[index]["stats"]}",
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

//dezafiu extra
// import 'dart:convert';
// import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: JsonApp()));
}

class JsonApp extends StatelessWidget {
  Future<List<Map<String, dynamic>>> bukaMikrolet() async {
    await Future.delayed(Duration(seconds: 3));

    String data = '''
    [
      {
        "numeru": 5,
        "rota": "Becora"
      },
      {
        "numeru": 10,
        "rota": "Comoro"
      },
      {
        "numeru": 12,
        "rota": "Tasi Tolu"
      }
    ]
    ''';

    return List<Map<String, dynamic>>.from(jsonDecode(data));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("JSON Mikrolet")),

      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: bukaMikrolet(),

        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text("Error"));
          }

          List<Map<String, dynamic>> mikrolet = snapshot.data!;

          return ListView.builder(
            itemCount: mikrolet.length,

            itemBuilder: (context, index) {
              return Card(
                margin: EdgeInsets.all(20),

                child: ListTile(
                  leading: Icon(Icons.directions_bus),

                  title: Text("Mikrolet ${mikrolet[index]["numeru"]}"),

                  subtitle: Text("Rota: ${mikrolet[index]["rota"]}"),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
