import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("padding no Margin")),
//         body: Center(
//           child: Container(
//             width: 250,
//             height: 120,
//             margin: EdgeInsets.all(20),
//             padding: EdgeInsets.all(20),
//             color: Colors.blue,
//             child: Center(
//               child: Text(
//                 "flutter",
//                 style: TextStyle(color: Colors.white, fontSize: 22),
//               ),
//             ),
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
//         appBar: AppBar(title: Text("padding no Margin")),
//         body: Center(
//           child: Container(
//             width: 220,
//             height: 120,
//             padding: EdgeInsets.all(20),
//             color: Colors.green,
//             child: Center(child: Text("Alcino")),
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
//         appBar: AppBar(title: Text("padding no Margin")),
//         body: Center(
//           child: Container(
//             width: 250,
//             height: 130,
//             margin: EdgeInsets.all(30),
//             color: Colors.orange,
//             child: Center(child: Text("Flutter")),
//           ),
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
        appBar: AppBar(title: Text("padding no Margin")),
        body: Center(
          child: Container(
            width: 320,
            height: 200,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            color: Colors.blue,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Mikrolet 10",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Rota: Comoro",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Motorista: Manel",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Status: Disponivel",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
