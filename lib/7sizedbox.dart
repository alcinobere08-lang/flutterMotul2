import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("espasu")),
//         body: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(Icons.location_city),
//               SizedBox(width: 30),
//               Text("Becora 3"),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }

//ezersisiu 1 (sizedbox height(vertical))
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("espasu")),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text("Alcino"),
//               SizedBox(height: 20),
//               Text("DIT"),
//               SizedBox(height: 20),
//               Text("Teknika Informatika"),
//               SizedBox(height: 20),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }

//ezersisu 2
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("espasu")),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(Icons.location_on),
//                   SizedBox(width: 10),
//                   Text("Becora"),
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(Icons.directions_bus),
//                   SizedBox(width: 10),
//                   Text("Mikrolet 12"),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }

//dezafiu eztra
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("espasu")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Mikrolet 12"),
              SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on),
                  SizedBox(width: 10),
                  Text("Rota: Becora"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person_2),
                  SizedBox(width: 10),
                  Text("Motorista: Manuel"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.check),
                  SizedBox(width: 10),
                  Text("Motorista: Manuel"),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
