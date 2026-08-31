import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(home: Myapp()));
// }

// class Myapp extends StatefulWidget {
//   @override
//   State<Myapp> createState() => _MyappState();
// }

// class _MyappState extends State<Myapp> {
//   String status = "seidauk buka";
//   Future<void> bukaDadus() async {
//     setState(() {
//       status = "Buka dasus";
//     });
//     await Future.delayed(Duration(seconds: 2));
//     setState(() {
//       status = "dadus hetal";
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("future")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(status, style: TextStyle(fontSize: 24)),
//             SizedBox(height: 20),

//             ElevatedButton(onPressed: bukaDadus, child: Text("Buka")),
//           ],
//         ),
//       ),
//     );
//   }
// }

//ezersisiu 1
void main() {
  runApp(MaterialApp(home: Myapp()));
}

class Myapp extends StatefulWidget {
  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  String status = "seidauk buka";

  Future<void> bukaDadus() async {
    setState(() {
      status = "buka Lokalizasaun";
    });
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      status = "rota hetan";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("future")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.directions_bus), Text(" Mikrolet")],
            ),
            SizedBox(height: 20),

            Text("status: $status", style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),

            ElevatedButton(onPressed: bukaDadus, child: Text("Buka rota")),
          ],
        ),
      ),
    );
  }
}
