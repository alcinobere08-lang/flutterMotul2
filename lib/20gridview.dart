import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Gridview")),
//         body: GridView.count(
//           crossAxisCount: 2,
//           children: [
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(Icons.directions_bus_filled_sharp),
//                 Text("Mikrolet 10"),
//               ],
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(Icons.directions_bus_filled_sharp),
//                 Text("Mikrolet 10"),
//               ],
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }

//gridview.builder
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Gridview")),
//         body: GridView.builder(
//           itemCount: Mikrolet.length,
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//           ),
//           itemBuilder: (context, index) {
//             return Card(child: Center(child: Text(Mikrolet[index])));
//           },
//         ),
//       ),
//     ),
//   );
// }

// List<String> Mikrolet = [
//   "Mikrolet 5",
//   "Mikrolet 10",
//   "Mikrolet 12",
//   "Mikrolet 15",
// ];

// ezersisiu 1
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Gridview")),
//         body: GridView.count(
//           crossAxisCount: 2,
//           children: [
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(Icons.directions_bus_filled_sharp),
//                 Text("Mikrolet 5"),
//               ],
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(Icons.directions_bus_filled_sharp),
//                 Text("Mikrolet 10"),
//               ],
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(Icons.directions_bus_filled_sharp),
//                 Text("Mikrolet 12"),
//               ],
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(Icons.directions_bus_filled_sharp),
//                 Text("Mikrolet 15"),
//               ],
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
//         appBar: AppBar(title: Text("Gridview")),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             GridView.builder(
//               itemCount: microlet.length,
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//               ),
//               itemBuilder: (context, index) {
//                 return Card(child: Text(microlet[index]));
//               },
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }

// List<String> microlet = ["Becora", "Comoro", "Tasi Tolu", "Bidau"];

//dezafiu extra

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Gridview")),
        body: GridView.count(
          crossAxisCount: 2,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.directions_bus_filled_sharp),
                Text("Mikrolet 5"),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.map_outlined), Text("Mapa ")],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.search_rounded), Text("Buka Destinu")],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.location_on_sharp), Text("Hau nia Gps")],
            ),
          ],
        ),
      ),
    ),
  );
}
