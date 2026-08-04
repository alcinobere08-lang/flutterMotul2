import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('icon')),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(Icons.directions_bus, size: 100, color: Colors.blue),
//             Text("Mikrolet", style: TextStyle(fontSize: 24)),
//           ],
//         ),
//       ),
//     ),
//   );
// }

//imagen iha assets
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('icon')),
//         body: Center(child: Image.asset("assets/bus.jpeg", width: 120)),
//       ),
//     ),
//   );
// }

//imagen network
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('icon')),
//         body: Center(
//           child: Image.network(
//             "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-WOjHRbUXxxUXuXKjrXAQKAER2LUuucGuPs4c8xlc2g&s=10",
//             width: 120,
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
//         appBar: AppBar(title: Text('icon')),
//         body: Center(child: Icon(Icons.person, size: 80, color: Colors.blue)),
//       ),
//     ),
//   );
// }

//ezersisiu 2
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('icon')),
//         body: Center(child: Image.asset("assets/bus.jpeg", width: 120)),
//       ),
//     ),
//   );
// }

//dezafiu extra
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('icon')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.directions_bus, size: 100, color: Colors.blue),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.location_on), Text("Becora")],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Statis: Ativu")],
            ),
          ],
        ),
      ),
    ),
  );
}
