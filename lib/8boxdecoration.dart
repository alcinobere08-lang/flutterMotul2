import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Box Decoration")),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 width: 190,
//                 height: 180,
//                 padding: EdgeInsets.all(20),
//                 decoration: BoxDecoration(
//                   color: Colors.blue,
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 child: Center(child: Text("aptende Box decoration")),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }

//border
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Box Decoration")),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 width: 250,
//                 height: 130,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   border: Border.all(color: Colors.blue, width: 5),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }

//boxShadow
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Box Decoration")),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 width: 190,
//                 height: 180,
//                 padding: EdgeInsets.all(20),
//                 decoration: BoxDecoration(
//                   color: Colors.yellowAccent,
//                   boxShadow: [BoxShadow(blurRadius: 10)],
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 child: Center(child: Text("aptende Box decoration")),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }

//kodigu kompletu
//

//ezersisiu 1

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Box Decoration")),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 width: 190,
//                 height: 180,

//                 decoration: BoxDecoration(
//                   color: Colors.green,

//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Center(child: Text("Alcino")),
//               ),
//             ],
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
//         appBar: AppBar(title: Text("Box Decoration")),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 width: 280,
//                 height: 150,

//                 decoration: BoxDecoration(
//                   color: Colors.orange,
//                   border: Border.all(color: Colors.black, width: 2),

//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 child: Center(child: Text("Flutter")),
//               ),
//             ],
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
        appBar: AppBar(title: Text("Box Decoration")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 320,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black, width: 2),
                  boxShadow: [BoxShadow(blurRadius: 10)],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Mikrolet 12"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on, size: 10),
                        SizedBox(width: 15),
                        Text("Rota: Bekora"),
                      ],
                    ),
                    SizedBox(width: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("Status: ativu")],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
