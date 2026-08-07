import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(home: StatusApp()));
// }

// class StatusApp extends StatefulWidget {
//   @override
//   State<StatusApp> createState() => _StatusAppState();
// }

// class _StatusAppState extends State<StatusApp> {
//   bool online = false;
//   @override
//   Widget build(BuildContext Context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Status")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             if (online)
//               Text("Status: online", style: TextStyle(fontSize: 25))
//             else
//               Text("status: offline", style: TextStyle(fontSize: 25)),

//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   online = true;
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

//ezersisiu 2
// void main() {
//   runApp(MaterialApp(home: StatusApp()));
// }

// class StatusApp extends StatefulWidget {
//   @override
//   State<StatusApp> createState() => _StatusAppState();
// }

// class _StatusAppState extends State<StatusApp> {
//   int numeru = 12;
//   @override
//   Widget build(BuildContext Context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Status")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             if (numeru == 10)
//               Text("Mikrolet 10", style: TextStyle(fontSize: 25))
//             else if (numeru == 12)
//               Text("Mirkolet 12", style: TextStyle(fontSize: 25))
//             else if (numeru == 15)
//               Text("Mikrolet 15", style: TextStyle(fontSize: 25))
//             else
//               Text("Mikrolet la hetan", style: TextStyle(fontSize: 25)),

//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   numeru = 10;
//                 });
//               },
//               child: Text("buka"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//dezafiu extra
void main() {
  runApp(MaterialApp(home: StatusApp()));
}

class StatusApp extends StatefulWidget {
  @override
  State<StatusApp> createState() => _StatusAppState();
}

class _StatusAppState extends State<StatusApp> {
  String destinu = "Comoro";
  String rota = "seidauk buka";
  @override
  Widget build(BuildContext Context) {
    return Scaffold(
      appBar: AppBar(title: Text("Status")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Buka rota"),
            SizedBox(height: 15),
            Icon(Icons.directions_car),

            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (destinu == "Becora") {
                    rota = "Mikrolet 05";
                  } else if (destinu == "Comoro") {
                    rota = "Mikrolet 10";
                  } else {
                    rota = "rota  la hetan";
                  }
                });
              },
              child: Text("Rota: $rota", style: TextStyle(fontSize: 25)),
            ),
          ],
        ),
      ),
    );
  }
}
