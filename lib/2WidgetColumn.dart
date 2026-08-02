import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("aprende Column")),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text("Alcino"),
//               Text("Teknika Informatika"),
//               Text("Flutter"),
//             ],
//           ),
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
//         appBar: AppBar(title: Text("ezersisu 1")),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text("Nome:"),
//               Text("Alcino"),
//               Text("Universidade:"),
//               Text("DIT"),
//               Text("Cursu:"),
//               Text("Teknika Informatika"),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }

//ezersisiu 2
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("ezersisiu 2")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Mapa Transporte Publiku"),
              Column(
                children: [
                  Text("Munisipiu:"),
                  Text("Dili"),

                  Text("Plataforma:"),
                  Text("Android"),

                  Text("Frimework:"),
                  Text("Flutter"),

                  Text("Database:"),
                  Text("SqlLite"),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
