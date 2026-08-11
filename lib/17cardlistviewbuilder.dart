import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Card")),
//         body: ListView.builder(
//           itemCount: microlet.length,
//           itemBuilder: (context, index) {
//             return Card(
//               color: const Color.fromARGB(255, 122, 237, 227),
//               margin: EdgeInsets.all(20),
//               elevation: 5,
//               child: ListTile(
//                 leading: Icon(Icons.directions_bus),
//                 title: Text("Mikrolet ${microlet[index]["numeru"]}"),
//                 subtitle: Text("Rota: ${microlet[index]["rota"]}"),
//                 onTap: () {
//                   print("Mikrolet ${microlet[index]["numeru"]} selesiondadu");
//                 },
//               ),
//             );
//           },
//         ),
//       ),
//     ),
//   );
// }

// List<Map<String, dynamic>> microlet = [
//   {"numeru": 5, "rota": "Becora"},
//   {"numeru": 12, "rota": "comoro"},
// ];

//ezersisiu 1

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Card")),

//         body: ListView.builder(
//           itemCount: estudante.length,
//           itemBuilder: (context, index) {
//             return Card(
//               margin: EdgeInsets.all(10),
//               elevation: 7,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: ListTile(
//                 leading: Icon(Icons.person_4),
//                 title: Text("${estudante[index]["naran"]}"),
//                 subtitle: Text("${estudante[index]["Kursu"]}"),
//               ),
//             );
//           },
//         ),
//       ),
//     ),
//   );
// }

// List<Map<String, dynamic>> estudante = [
//   {"naran": "Alcino", "Kursu": "Teknika Informatika"},
// ];

//ezersisiu 2
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Card")),

//         body: ListView.builder(
//           itemCount: estudante.length,
//           itemBuilder: (context, index) {
//             return Card(
//               margin: EdgeInsets.all(10),
//               elevation: 7,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: ListTile(
//                 leading: Icon(Icons.person_4),
//                 title: Text("${estudante[index]["naran"]}"),
//                 subtitle: Text("${estudante[index]["Kursu"]}"),
//               ),
//             );
//           },
//         ),
//       ),
//     ),
//   );
// }

// List<Map<String, dynamic>> estudante = [
//   {"naran": "Alcino", "Kursu": "Teknika Informatika"},
//   {"naran": "Manuel", "Kursu": "Informatika"},
//   {"naran": "Maria", "Kursu": " Sistema Informasaun"},
//   {"naran": "Joao", "Kursu": "Engenharia Informatika"},
// ];

//dezafiu extra
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Card")),

        body: ListView.builder(
          itemCount: Mikrolet.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.all(10),
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: Icon(Icons.directions_bus_filled_sharp),
                trailing: Icon(Icons.arrow_back_ios),
                title: Text("Mikrolet ${Mikrolet[index]["numeru"]}"),
                subtitle: Text(
                  "Rota:${Mikrolet[index]["rota"]}\n"
                  "Motorista: ${Mikrolet[index]["motorista"]}\n"
                  "Status: ${Mikrolet[index]["Status"]}\n",
                ),
              ),
            );
          },
        ),
      ),
    ),
  );
}

List<Map<String, dynamic>> Mikrolet = [
  {"numeru": 5, "rota": "Becora", "motorista": "Manuel", "Status": "Ativu"},
  {"numeru": 10, "rota": "Comoro", "motorista": "Joao", "Status": "La Ativu"},
  {"numeru": 12, "rota": "Tasi Tolu", "motorista": "Pedro", "Status": "Ativu"},
];
