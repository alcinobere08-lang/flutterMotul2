import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Map iha flutter")),
//         body: ListView.builder(
//           itemCount: microlet.length,
//           itemBuilder: (context, index) {
//             return ListTile(
//               leading: Icon(Icons.directions_bus),
//               title: Text("Mikrolet ${microlet[index]["numeru"]}"),

//               subtitle: Text(
//                 "Rota: ${microlet[index]["rota"]}\n"
//                 "Motorista: ${microlet[index]["motorista"]}",
//               ),
//             );
//           },
//         ),
//       ),
//     ),
//   );
// }

// List<Map<String, dynamic>> microlet = [
//   {"numeru": 5, "rota": "Becora", "motorista": "Manuel"},
//   {"numeru": 10, "rota": "Comoro", "motorista": "Pedro"},
//   {"numeru": 2, "rota": "aimutin", "motorista": "Alcino"},
// ];

//ezersisiu 1
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("ezersisiu 1")),
//         body: ListView.builder(
//           itemCount: dadus.length,
//           itemBuilder: (context, index) {
//             return ListTile(
//               leading: Icon(Icons.person_2),
//               title: Text("Mikrolet ${dadus[index]["numeru"]}"),

//               subtitle: Text(
//                 "Idade: ${dadus[index]["idade"]}\n"
//                 "Kursu: ${dadus[index]["kursu"]}",
//               ),
//             );
//           },
//         ),
//       ),
//     ),
//   );
// }

// List<Map<String, dynamic>> dadus = [
//   {"naran": "Alcino", "idade": 25, "kursu": "Teknika Informatika"},
// ];

//ezersisiu 2
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("exersisiu 2")),
//         body: ListView.builder(
//           itemCount: estudante.length,
//           itemBuilder: (context, index) {
//             return ListTile(
//               leading: Icon(Icons.person_2_rounded),
//               title: Text("${estudante[index]["naran"]}"),
//               subtitle: Text("${estudante[index]["kursu"]}"),
//             );
//           },
//         ),
//       ),
//     ),
//   );
// }

// List<Map<String, dynamic>> estudante = [
//   {"naran": "Alcino", "kursu": "Teknika Informatika"},
//   {"naran": "Manuel", "kursu": "Informatika"},
//   {"naran": "Maria", "kursu": "Sistema Informasaun "},
// ];

//dezafiua extra
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("exersisiu 2")),
        body: ListView.builder(
          itemCount: microlet.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.directions_bus_filled_outlined),
              title: Text("Mikrolet: ${microlet[index]["numeru"]}"),
              subtitle: Text(
                "Rota: ${microlet[index]["rota"]}\n"
                "Motorista: ${microlet[index]["motorista"]}\n"
                "Status: ${microlet[index]["Status"]}\n",
              ),
              onTap: () {
                print("Mikrolet ${microlet[index]["numeru"]} selesionadu");
              },
            );
          },
        ),
      ),
    ),
  );
}

List<Map<String, dynamic>> microlet = [
  {"numeru": 5, "rota": "Becora", "motorista": "Manuel", "Status": "Ativu"},
  {"numeru": 10, "rota": "Comoro", "motorista": "Manuel", "Status": "La Ativu"},
];
