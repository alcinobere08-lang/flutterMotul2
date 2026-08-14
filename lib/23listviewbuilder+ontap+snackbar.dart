import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(home: ListaMikrolet()));
// }

// class ListaMikrolet extends StatelessWidget {
//   List<Map<String, dynamic>> microlet = [
//     {"numeru": 5, "rota": "becora"},
//     {"numeru": 10, "rota": "comoro"},
//     {"numeru": 12, "rota": "tasi tolu"},
//   ];

//   @override
//   Widget build(BuildContext Context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("lista mikrolet")),
//       body: ListView.builder(
//         itemCount: microlet.length,
//         itemBuilder: (Context, index) {
//           return Card(
//             margin: EdgeInsets.all(10),
//             child: ListTile(
//               leading: Icon(Icons.directions_bus),
//               title: Text("Mikrolet ${microlet[index]["numeru"]}"),
//               subtitle: Text("rota ${microlet[index]["rota"]}"),
//               onTap: () {
//                 ScaffoldMessenger.of(Context).showSnackBar(
//                   SnackBar(
//                     content: Text("Mikrolet ${microlet[index]["numeru"]}"),
//                   ),
//                 );
//               },
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

//ezersisiu 1
// void main() {
//   runApp(MaterialApp(home: ListaMikrolet()));
// }

// class ListaMikrolet extends StatelessWidget {
//   List<Map<String, dynamic>> microlet = [
//     {"numeru": 5, "rota": "becora"},
//     {"numeru": 10, "rota": "comoro"},
//     {"numeru": 12, "rota": "tasi tolu"},
//     {"numeru": 15, "rota": "bidau"},
//   ];

//   @override
//   Widget build(BuildContext Context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("lista mikrolet")),
//       body: ListView.builder(
//         itemCount: microlet.length,
//         itemBuilder: (Context, index) {
//           return Card(
//             margin: EdgeInsets.all(10),
//             child: ListTile(
//               leading: Icon(Icons.directions_bus),
//               title: Text("Mikrolet ${microlet[index]["numeru"]}"),
//               subtitle: Text("rota ${microlet[index]["rota"]}"),
//               onTap: () {
//                 ScaffoldMessenger.of(Context).showSnackBar(
//                   SnackBar(
//                     content: Text(
//                       "Mikrolet ${microlet[index]["numeru"]} selesionadu!",
//                     ),
//                   ),
//                 );
//               },
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

//ezersisiu 2
// void main() {
//   runApp(MaterialApp(home: ListaMikrolet()));
// }

// class ListaMikrolet extends StatelessWidget {
//   List<Map<String, dynamic>> microlet = [
//     {"numeru": 5, "rota": "becora", "motorista": "Manuel"},
//     {"numeru": 10, "rota": "comoro", "motorista": "Joao"},
//     {"numeru": 12, "rota": "tasi tolu", "motorista": "Pedro"},
//   ];

//   @override
//   Widget build(BuildContext Context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("lista mikrolet")),
//       body: ListView.builder(
//         itemCount: microlet.length,
//         itemBuilder: (Context, index) {
//           return Card(
//             margin: EdgeInsets.all(10),
//             child: ListTile(
//               leading: Icon(Icons.directions_bus),
//               title: Text("Mikrolet ${microlet[index]["numeru"]}"),
//               subtitle: Text(
//                 "rota ${microlet[index]["rota"]}\n"
//                 "motorista ${microlet[index]["motorista"]}",
//               ),
//               onTap: () {
//                 ScaffoldMessenger.of(Context).showSnackBar(
//                   SnackBar(
//                     content: Text(
//                       "Mikrolet ${microlet[index]["numeru"]} selesionadu!",
//                     ),
//                   ),
//                 );
//               },
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

//dezafiu extra
void main() {
  runApp(MaterialApp(home: ListaMikrolet()));
}

class ListaMikrolet extends StatelessWidget {
  List<Map<String, dynamic>> microlet = [
    {"numeru": 5, "rota": "becora", "motorista": "Manuel", "status": "ativu"},
    {"numeru": 10, "rota": "comoro", "motorista": "Joao", "status": "ativu"},
    {
      "numeru": 12,
      "rota": "tasi tolu",
      "motorista": "Pedro",
      "status": "ativu",
    },
  ];

  @override
  Widget build(BuildContext Context) {
    return Scaffold(
      appBar: AppBar(title: Text("lista mikrolet")),
      body: ListView.builder(
        itemCount: microlet.length,
        itemBuilder: (Context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.directions_bus),

              title: Text("Mikrolet ${microlet[index]["numeru"]}"),
              subtitle: Text(
                "rota ${microlet[index]["rota"]}\n"
                "motorista ${microlet[index]["motorista"]}\n"
                "status ${microlet[index]["status"]}",
              ),
              trailing: Icon(Icons.arrow_back),
              onTap: () {
                ScaffoldMessenger.of(Context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "Mikrolet ${microlet[index]["numeru"]}- ${microlet[index]["rota"]} selesionadu!",
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
