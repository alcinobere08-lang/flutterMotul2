import 'package:flutter/material.dart';

//button ho icon
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("buttom no interasaun")),
//         body: Center(
//           child: ElevatedButton.icon(
//             onPressed: () {
//               print("bukarota");
//             },
//             icon: Icon(Icons.search),
//             label: Text("Buka rota"),
//           ),
//         ),
//       ),
//     ),
//   );
// }

//text button
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("buttom no interasaun")),
//         body: Center(
//           child: TextButton(

//             onPressed: () {
//               print("Klik");
//             },
//             child: Text("Detalhe"),
//           ),
//         ),
//       ),
//     ),
//   );
// }

//outlinedButton
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Button")),
//         body: Center(
//           child: OutlinedButton(

//             onPressed: () {
//               print("Hare Mapa");
//             },
//             child: Text("Hare mapa"),
//           ),
//         ),
//       ),
//     ),
//   );
// }

//button iha column
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Button")),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text("Mapa Transporte Publiku"),
//               SizedBox(height: 20),

//               ElevatedButton(
//                 onPressed: () {
//                   print("Buka");
//                 },
//                 child: Text("Buka destinu"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }

//sekali lagi...satu kali lagi (button ho icon)
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Button")),
//         body: Center(
//           child: ElevatedButton.icon(
//             onPressed: () {
//               print("Buka destinu");
//             },
//             icon: Icon(Icons.search),
//             label: Text("buka destinu"),
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
//         appBar: AppBar(title: Text("Button")),
//         body: Center(
//           child: ElevatedButton.icon(
//             onPressed: () {
//               print("hare lokalizasaun");
//             },
//             icon: Icon(Icons.location_history_sharp),
//             label: Text("hau nia lokalizasaun"),
//           ),
//         ),
//       ),
//     ),
//   );
// }

//ezersisu 1

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Button")),
//         body: Center(
//           child: ElevatedButton(
//             onPressed: () {
//               print("Destinu buka");
//             },
//             child: Text("Buka Destinu"),
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
//         appBar: AppBar(title: Text("Button")),
//         body: Center(
//           child: ElevatedButton.icon(
//             onPressed: () {
//               print("Lokalizasaun buka");
//             },
//             icon: Icon(Icons.location_on),
//             label: Text("Hau nia lokalizasaun"),
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
        appBar: AppBar(title: Text("Button")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.directions_bus),
              Text("Mikrolet Dili"),
              SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: () {
                  print("Buka destinu");
                },
                icon: Icon(Icons.search),
                label: Text("Buka Destinu"),
              ),
              SizedBox(height: 10),
              ElevatedButton.icon(
                onPressed: () {
                  print("Hare Lokalizasaun");
                },
                icon: Icon(Icons.location_on),
                label: Text("hau nia lokalizasaun"),
              ),
              SizedBox(height: 10),
              ElevatedButton.icon(
                onPressed: () {
                  print("Hare Mapa");
                },
                icon: Icon(Icons.map),
                label: Text("Haree Mapa"),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
