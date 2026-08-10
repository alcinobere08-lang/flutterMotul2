import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("lista Mikrolet")),
//         body: ListView.builder(
//           itemCount: mikrolet.length,
//           itemBuilder: (context, index) {
//             return ListTile(
//               leading: Icon(Icons.directions_bus),
//               title: Text(mikrolet[index]),
//             );
//           },
//         ),
//       ),
//     ),
//   );
// }

// List<String> mikrolet = ["mikrolet 4", "mikrolet 3", "mikrolet 6"];

//aumenta title subtitle
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("lista Mikrolet")),
//         body: ListView.builder(
//           itemCount: numeru.length,
//           itemBuilder: (context, index) {
//             return ListTile(
//               leading: Icon(Icons.directions_bus),
//               title: Text(numeru[index]),
//               subtitle: Text("rota: ${rota[index]}"),
//             );
//           },
//         ),
//       ),
//     ),
//   );
// }
// //lista mikrolet
// List<String> numeru = ["mikrolet 5", "mikrolet 4", "mikrolet 7"];
// //lista rota
// List<String> rota = ["Becora", "COmoro", "Tasi Tolu"];

//aumenta onTap
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("lista Mikrolet")),
//         body: ListView.builder(
//           itemCount: numeru.length,
//           itemBuilder: (context, index) {
//             return ListTile(
//               leading: Icon(Icons.directions_bus),
//               title: Text(numeru[index]),
//               onTap: () {
//                 print("${numeru[index]} selesionadu");
//               },
//             );
//           },
//         ),
//       ),
//     ),
//   );
// }

// //lista mikrolet
// List<String> numeru = ["mikrolet 5", "mikrolet 4", "mikrolet 7"];

// //lista rota
// List<String> rota = ["Becora", "COmoro", "Tasi Tolu"];

//ezersisiu 1
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("ezersisiu 1")),
//         body: ListView.builder(
//           itemCount: mikrolet.length,
//           itemBuilder: (context, index) {
//             return ListTile(
//               leading: Icon(Icons.directions_bus),
//               title: Text(mikrolet[index])
//               );
//           },
//         ),
//       ),
//     ),
//   );
// }

// List<String> mikrolet = [
//   "Mikrolet 5",
//   "Mikrolet 10",
//   "Mikrolet 12",
//   "Mikrolet 15",
// ];

//ezersisiu 2
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("ezersisiu 2")),
//         body: ListView.builder(
//           itemCount: naran.length,
//           itemBuilder: (context, index) {
//             return ListTile(
//               leading: Icon(Icons.person_3_rounded),
//               title: Text(naran[index]),
//               subtitle: Text(kursu[index]),
//             );
//           },
//         ),
//       ),
//     ),
//   );
// }

// List<String> naran = ["Alcino", "Manuel", "Maria", "Joao"];
// List<String> kursu = [
//   "Teknika Informatika",
//   "Informatika",
//   "Sistema Informasaun",
//   "Engenaria Informatika",
// ];

//dezafiu extra
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("dezafiu extra")),
        body: ListView.builder(
          itemCount: mikrolet.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.directions_bus_filled_rounded),
              trailing: Icon(Icons.arrow_back),
              title: Text(mikrolet[index]),
              subtitle: Text(rota[index]),
              onTap: () {
                print("${mikrolet[index]} selesionadu");
              },
            );
          },
        ),
      ),
    ),
  );
}

List<String> mikrolet = [
  "Mikrolet 5",
  "Mikrolet 10",
  "Mikrolet 12",
  "Mikrolet 15",
];
List<String> rota = ["Becora", "Comoro", "Tasi Tolu ", "Bidau "];
