import 'package:flutter/material.dart';
import 'package:mapa_mikrolet/16listmapstringdynamic.dart';
import 'package:mapa_mikrolet/17cardlistviewbuilder.dart';

// void main() {
//   runApp(MaterialApp(home: MinhaPagina()));
// }

// class MinhaPagina extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("SnackBar")),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             ScaffoldMessenger.of(
//               context,
//             ).showSnackBar(SnackBar(content: Text("Destinu buka ona!")));
//           },
//           child: Text("Buka"),
//         ),
//       ),
//     );
//   }
// }

//snackbar guesturedetector
// void main() {
//   runApp(MaterialApp(home: MinhaPagina()));
// }

// class MinhaPagina extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("SnackBar")),
//       body: Center(
//         child: GestureDetector(
//           onTap: () {
//             ScaffoldMessenger.of(
//               context,
//             ).showSnackBar(SnackBar(content: Text("Mikrolet 12 selsionadu")));
//           },
//           child: Card(
//             child: ListTile(
//               leading: Icon(Icons.directions_bus),
//               title: Text("mikrolet 12"),
//               subtitle: Text("rota:bekora"),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

//snackbar + duration
// void main() {
//   runApp(MaterialApp(home: MinhaPagina()));
// }

// class MinhaPagina extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("SnackBar")),
//       body: Center(
//         child: GestureDetector(
//           onTap: () {
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(
//                 content: Text("Mikrolet 12 selsionadu"),
//                 duration: Duration(seconds: 5),
//               ),
//             );
//           },
//           child: Card(
//             child: ListTile(
//               leading: Icon(Icons.directions_bus),
//               title: Text("mikrolet 12"),
//               subtitle: Text("rota:bekora"),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

//snackbar + action
// void main() {
//   runApp(MaterialApp(home: MinhaPagina()));
// }

// class MinhaPagina extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("SnackBar")),
//       body: Center(
//         child: GestureDetector(
//           onTap: () {
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(
//                 content: Text("Mikrolet 12 selsionadu"),
//                 duration: Duration(seconds: 5),
//                 action: SnackBarAction(
//                   label: "UNDO",
//                   onPressed: () {
//                     print("undo");
//                   },
//                 ),
//               ),
//             );
//           },
//           child: Card(
//             child: ListTile(
//               leading: Icon(Icons.directions_bus),
//               title: Text("mikrolet 12"),
//               subtitle: Text("rota:bekora"),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

//ezerisiu 1
// void main() {
//   runApp(MaterialApp(home: MinhaPagina()));
// }

// class MinhaPagina extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Buka Destinu")),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             ScaffoldMessenger.of(
//               context,
//             ).showSnackBar(SnackBar(content: Text("Destinu buka ona")));
//           },
//           child: Text("Buka Destinu"),
//         ),
//       ),
//     );
//   }
// }

//ezersisiu 2
// void main() {
//   runApp(MaterialApp(home: MinhaPagina()));
// }

// class MinhaPagina extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Buka Destinu")),
//       body: Center(
//         child: GestureDetector(
//           onTap: () {
//             ScaffoldMessenger.of(
//               context,
//             ).showSnackBar(SnackBar(content: Text("Mikrolet 10 selsionadu")));
//           },
//           child: Card(
//             child: ListTile(
//               leading: Icon(Icons.directions_bus),
//               title: Text("Mikrolet 10"),
//               subtitle: Text("Rota: Comoro"),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

//dezafiu extra
void main() {
  runApp(MaterialApp(home: MinhaPagina()));
}

class MinhaPagina extends StatelessWidget {
  List<Map<String, dynamic>> Mikrolet = [
    {"numeru": 5, "rota": "Becora"},
    {"numeru": 10, "rota": "Comoro"},
    {"numeru": 12, "rota": "Tasi Tolu"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Buka Destinu")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "Mikrolet ${Mikrolet[0]["numeru"]} selsionadu!",
                    ),
                  ),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.directions_bus),
                      title: Text("Mikrolet 5"),
                      subtitle: Text("Rota: Becora"),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Mikrolet ${Mikrolet[1]["numeru"]}")),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.directions_bus),
                      title: Text("Mikrolet 10"),
                      subtitle: Text("Rota: Comoro"),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Mikrolet ${Mikrolet[2]["numeru"]}")),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.directions_bus),
                      title: Text("Mikrolet 12"),
                      subtitle: Text("Rota: Tasi Tolu"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
