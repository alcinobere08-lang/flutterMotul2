import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("TextField no input")),
//         body: Center(
//           child: TextField(
//             decoration: InputDecoration(hintText: "hakerek buat ruma"),
//           ),
//         ),
//       ),
//     ),
//   );
// }

//kombinasaun
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("TextField no input")),
//         body: Center(
//           child: TextField(
//             decoration: InputDecoration(
//               hintText: "hakerek buat ruma",
//               labelText: "Destinu",
//               prefixIcon: Icon(Icons.search),
//               border: OutlineInputBorder(),
//             ),
//           ),
//         ),
//       ),
//     ),
//   );
// }

//TExtField iha COlumn
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("TextField no input")),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text("Buka Destinu", style: TextStyle(fontSize: 24)),
//               SizedBox(height: 20),
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: "hakerek destinasaun",
//                   prefixIcon: Icon(Icons.search),
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   print("BUka");
//                 },
//                 child: Text("Buka Destinu"),
//               ),
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
//         appBar: AppBar(title: Text("TextField no input")),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text("Buka Destinu"),
//               SizedBox(height: 20),
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: "Hakerek Destinasaun",
//                   prefixIcon: Icon(Icons.search),
//                   border: OutlineInputBorder(),
//                 ),
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
//         appBar: AppBar(title: Text("TextField no input")),
//         body: Center(
//           child: TextField(
//             decoration: InputDecoration(
//               hintText: "Hakerek Naran",
//               prefixIcon: Icon(Icons.person),
//               border: OutlineInputBorder(),
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
        appBar: AppBar(title: Text("TextField no input")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.directions_bus),
              SizedBox(height: 10),
              Text("Buka Destiun"),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: "Hakerek Destinasaun",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  print("Buka Rota");
                },
                icon: Icon(Icons.search),
                label: Text("Buka Rota"),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
