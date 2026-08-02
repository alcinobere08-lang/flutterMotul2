import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("container")),
//         body: Center(
//           child: Container(
//             width: 200,
//             height: 100,
//             color: Colors.green,
//             child: Center(
//               child: Text(
//                 "Alcino",
//                 style: TextStyle(color: Colors.white, fontSize: 22),
//               ),
//             ),
//           ),
//         ),
//       ),
//     ),
//   );
// }

//ezersisiu2
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("container")),
//         body: Center(
//           child: Container(
//             width: 250,
//             height: 120,
//             color: Colors.orange,
//             child: Center(
//               child: Text(
//                 "Flutter SDK",
//                 style: TextStyle(color: Colors.white, fontSize: 22),
//               ),
//             ),
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
        appBar: AppBar(title: Text("container")),
        body: Center(
          child: Container(
            width: 300,
            height: 180,
            color: Colors.blue,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Mikrolet 12",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Rota:",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      Text(
                        "Becora",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Motorista:",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      Text(
                        " Manuel",
                        style: TextStyle(color: Colors.white, fontSize: 17),
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
