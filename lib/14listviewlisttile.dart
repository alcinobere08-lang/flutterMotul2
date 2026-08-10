import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("listview ho listtile")),
//         body: Center(
//           child: ListView(
//             children: [
//               ListTile(
//                 leading: Icon(Icons.directions_bus),
//                 title: Text("Mikrolet 5"),
//                 subtitle: Text("rota becora"),
//                 trailing: Icon(Icons.arrow_back),
//               ),
//               ListTile(
//                 leading: Icon(Icons.directions_bus),
//                 title: Text("Mikrolet 10"),
//                 subtitle: Text("rota comoro"),
//                 trailing: Icon(Icons.arrow_back),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Lista Mikrolet")),
//         body: ListView(
//           children: [
//             ListTile(
//               leading: Icon(Icons.directions_bus),
//               title: Text("Mikrolet 5"),
//               subtitle: Text("Rota: Becora"),
//               onTap: () {
//                 print("mikrolet 5 klike");
//               },
//             ),

//             ListTile(
//               leading: Icon(Icons.directions_bus),
//               title: Text("Mikrolet 10"),
//               subtitle: Text("Rota: Comoro"),
//               onTap: () {
//                 print("mikrolet 10 klike");
//               },
//             ),

//             ListTile(
//               leading: Icon(Icons.directions_bus),
//               title: Text("Mikrolet 12"),
//               subtitle: Text("Rota: Tasi Tolu"),
//               onTap: () {
//                 print("mikrolet 12 klike");
//               },
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }

//ezersisiu 1
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Lista Mikrolet")),
//         body: ListView(
//           children: [
//             ListTile(
//               //leading: Icon(Icons.directions_bus),
//               title: Text("Mikrolet 5"),
//               subtitle: Text("Rota: Becora"),
//               // onTap: () {
//               //   print("mikrolet 5 klike");
//               // },
//             ),

//             ListTile(
//               //leading: Icon(Icons.directions_bus),
//               title: Text("Mikrolet 10"),
//               subtitle: Text("Rota: Comoro"),
//               // onTap: () {
//               //   print("mikrolet 10 klike");
//               // },
//             ),

//             ListTile(
//               //leading: Icon(Icons.directions_bus),
//               title: Text("Mikrolet 12"),
//               subtitle: Text("Rota: Tasi Tolu"),
//               // onTap: () {
//               //   print("mikrolet 12 klike");
//               // },
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }

//ezersisiu 2
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Lista Mikrolet")),
//         body: ListView(
//           children: [
//             ListTile(
//               leading: Icon(Icons.person),
//               title: Text("Alcino"),
//               subtitle: Text("Teknika Informatika"),
//               // onTap: () {
//               //   print("mikrolet 5 klike");
//               // },
//             ),

//             ListTile(
//               leading: Icon(Icons.person_2),
//               title: Text("Manuel "),
//               subtitle: Text("Informatika"),
//               // onTap: () {
//               //   print("mikrolet 10 klike");
//               // },
//             ),

//             ListTile(
//               leading: Icon(Icons.person_2_rounded),
//               title: Text("Maria"),
//               subtitle: Text("Sistema iformasaun"),
//               // onTap: () {
//               //   print("mikrolet 12 klike");
//               // },
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }

//dezafiu extra
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Lista Mikrolet")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Transporte Publiku Dili", style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.directions_bus),
                    title: Text("Mikrolet 5"),
                    subtitle: Text("Rota: Becora"),
                    trailing: Icon(Icons.arrow_back_sharp),
                    onTap: () {
                      print("mikrolet 5 Selesionadu");
                    },
                  ),

                  ListTile(
                    leading: Icon(Icons.directions_bus_rounded),
                    title: Text("Mikrolet 10  "),
                    subtitle: Text("Rota: Comoro"),
                    trailing: Icon(Icons.arrow_back_sharp),
                    onTap: () {
                      print("mikrolet 10 Selesionadu");
                    },
                  ),

                  ListTile(
                    leading: Icon(Icons.directions_bus_rounded),
                    title: Text("Mikrolet 12  "),
                    subtitle: Text("Rota: Tasi Tolou"),
                    trailing: Icon(Icons.arrow_back_sharp),
                    onTap: () {
                      print("mikrolet 12 Selesionadu");
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.directions_bus_rounded),
                    title: Text("Mikrolet 15  "),
                    subtitle: Text("Rota: Bidau"),
                    trailing: Icon(Icons.arrow_back_sharp),
                    onTap: () {
                      print("mikrolet 15 Selesionadu");
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
