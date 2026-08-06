import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(home: CounterApp()));
// }

// class CounterApp extends StatefulWidget {
//   @override
//   State<CounterApp> createState() => _CounterAppState();
// }

// class _CounterAppState extends State<CounterApp> {
//   int numeru = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("counter")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Numeru: $numeru", style: TextStyle(fontSize: 25)),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   numeru++;
//                 });
//               },
//               child: Text("aumenta"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//

//ezersisiu 1
// void main() {
//   runApp(MaterialApp(home: counterApp()));
// }

// class counterApp extends StatefulWidget {
//   @override
//   State<counterApp> createState() => _counterAppState();
// }

// class _counterAppState extends State<counterApp> {
//   int numeru = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("counter")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Numeru: $numeru", style: TextStyle(fontSize: 25)),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   numeru++;
//                 });
//               },
//               child: Text("Aumenta"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//ezersisiu 2
// void main() {
//   runApp(MaterialApp(home: counterApp()));
// }

// class counterApp extends StatefulWidget {
//   @override
//   State<counterApp> createState() => _counterAppState();
// }

// class _counterAppState extends State<counterApp> {
//   String status = "Offline";

//   @override
//   Widget build(BuildContext Context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("counter")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Status: $status", style: TextStyle(fontSize: 23)),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   status = "Online";
//                 });
//               },
//               child: Text("Ativa"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//dezafiu extra
void main() {
  runApp(MaterialApp(home: counterApp()));
}

class counterApp extends StatefulWidget {
  @override
  State<counterApp> createState() => _counterAppState();
}

class _counterAppState extends State<counterApp> {
  String rota = "Seidauk Buka";
  @override
  Widget build(BuildContext Context) {
    return Scaffold(
      appBar: AppBar(title: Text("counter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.directions_bus_filled_outlined),
            SizedBox(height: 10),
            Text("Rota: $rota"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  rota = "rota hetan";
                });
              },
              child: Text("Buka Rota"),
            ),
          ],
        ),
      ),
    );
  }
}
