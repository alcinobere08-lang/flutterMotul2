import 'package:flutter/material.dart';
// import 'package:mapa_mikrolet/17cardlistviewbuilder.dart';

// void main() {
//   runApp(MaterialApp(home: DestinasaunApp()));
// }

// class DestinasaunApp extends StatefulWidget {
//   @override
//   State<DestinasaunApp> createState() => _DestinasaunAppState();
// }

// class _DestinasaunAppState extends State<DestinasaunApp> {
//   String Destinasaun = "Becora";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("hii destinu")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             DropdownButton<String>(
//               value: Destinasaun,
//               items: [
//                 DropdownMenuItem(value: "Becora", child: Text("Becora")),
//                 DropdownMenuItem(value: "Comoro", child: Text("Comoro")),
//                 DropdownMenuItem(value: "Tasi Tolu", child: Text("Tasi Tolu")),
//                 DropdownMenuItem(value: "Bidau", child: Text("Bidau")),
//               ],
//               onChanged: (value) {
//                 setState(() {
//                   Destinasaun = value!;
//                 });
//               },
//             ),
//             SizedBox(height: 20),
//             Text("destinasaun $Destinasaun", style: TextStyle(fontSize: 22)),
//           ],
//         ),
//       ),
//     );
//   }
// }

//ezersisiu 2
// void main() {
//   runApp(MaterialApp(home: Mikrolet()));
// }

// class Mikrolet extends StatefulWidget {
//   @override
//   State<Mikrolet> createState() => _MikroletState();
// }

// class _MikroletState extends State<Mikrolet> {
//   String Mikrolet = "12";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("hii destinu")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             DropdownButton<String>(
//               value: Mikrolet,
//               items: [
//                 DropdownMenuItem(value: "5", child: Text("Mikrolet 5")),
//                 DropdownMenuItem(value: "10", child: Text("Mikrolet 10")),
//                 DropdownMenuItem(value: "12", child: Text("Mikrolet 12")),
//                 DropdownMenuItem(value: "15", child: Text("Mikrolet 15")),
//               ],
//               onChanged: (value) {
//                 setState(() {
//                   Mikrolet = value!;
//                 });
//               },
//             ),
//             SizedBox(height: 20),
//             Text(
//               "Mikrolet selesionadu: $Mikrolet",
//               style: TextStyle(fontSize: 22),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//dezafiu extra
void main() {
  runApp(MaterialApp(home: Mikrolet()));
}

class Mikrolet extends StatefulWidget {
  @override
  State<Mikrolet> createState() => _MikroletState();
}

class _MikroletState extends State<Mikrolet> {
  String Mikrolet = "hili Mikrolet";
  List<Map<String, dynamic>> microlet = [
    {"numeru": 5, "rota": "Becora"},
    {"numeru": 10, "rota": "Comoro"},
    {"numeru": 12, "rota": "Tasi Tolu"},
    {"numeru": 15, "rota": "Bidau"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hii destinu")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<String>(
              value: Mikrolet,
              items: [
                DropdownMenuItem(
                  value: "Mikrolet 5",
                  child: Text("${microlet[0]}"),
                ),
                DropdownMenuItem(
                  value: "Mikrolet 10",
                  child: Text("${microlet[1]}"),
                ),
                DropdownMenuItem(
                  value: "Mikrolet 12 ",
                  child: Text("${microlet[2]}"),
                ),
                DropdownMenuItem(
                  value: "Mikrolet 15",
                  child: Text("${microlet[3]}"),
                ),
                DropdownMenuItem(
                  value: "hili Mikrolet",
                  child: Text("hili Mikrolet"),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  Mikrolet = value!;
                });
              },
            ),
            SizedBox(height: 20),
            Text("hehe $microlet", style: TextStyle(fontSize: 22)),
          ],
        ),
      ),
    );
  }
}
