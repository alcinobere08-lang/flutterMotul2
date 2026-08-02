import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("row")),
//         body: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [Text("alcino"), Text(" DIT "), Text("Flutter")],
//           ),
//         ),
//       ),
//     ),
//   );
// }

//kombinasaun column ho row
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("row")),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text("Informasaun"),

//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [Text("Nome: "), Text("Alcino")],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [Text("Universidade: "), Text("DIT")],
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }

// //ezersisiu 1
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("ezersisiu1")),

//         body: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [Text("Alcino "), Text("DIT "), Text("Flutter")],
//           ),
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
//         appBar: AppBar(title: Text("ezersisiu2")),

//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [Text("Nome: "), Text(" Alcino ")],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [Text("Universidade: "), Text(" DIT ")],
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }

//Dezafiu extra
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("ezersisiu2")),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Informasaun Mikrolet"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Numeru: "), Text(" 12 ")],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Rota: "), Text(" Becora ")],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Motorista: "), Text(" Manuel ")],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
