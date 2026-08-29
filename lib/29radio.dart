import 'package:flutter/material.dart';
// import 'package:mapa_mikrolet/27dropdownbutton.dart';

// void main() {
//   runApp(MaterialApp(home: MikroletApp()));
// }

// class MikroletApp extends StatefulWidget {
//   @override
//   State<MikroletApp> createState() => _MikroletAppState();
// }

// class _MikroletAppState extends State<MikroletApp> {
//   String mikrolet = "5";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Hili Mikrolet")),
//       body: Column(
//         children: [
//           Radio<String>(
//             value: "5",
//             groupValue: mikrolet,
//             onChanged: (value) {
//               setState(() {
//                 mikrolet = value!;
//               });
//             },
//           ),

//           Radio<String>(
//             value: "10",
//             groupValue: mikrolet,
//             onChanged: (value) {
//               setState(() {
//                 mikrolet = value!;
//               });
//             },
//           ),

//           Text("Mikrolet hili: $mikrolet"),
//         ],
//       ),
//     );
//   }
// }

//ezersisiu 1
// void main() {
//   runApp(MaterialApp(home: MikroletApp()));
// }

// class MikroletApp extends StatefulWidget {
//   @override
//   State<MikroletApp> createState() => _MikroletAppState();
// }

// class _MikroletAppState extends State<MikroletApp> {
//   String microlet = "Mikrolet 5";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("ezersisiu 1")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Radio<String>(
//               value: "Mikrolet 5",
//               groupValue: microlet,
//               onChanged: (value) {
//                 setState(() {
//                   microlet = value!;
//                 });
//               },
//             ),
//             Radio<String>(
//               value: "Mikrolet 10",
//               groupValue: microlet,
//               onChanged: (value) {
//                 setState(() {
//                   microlet = value!;
//                 });
//               },
//             ),
//             Radio<String>(
//               value: "Mikrolet 12",
//               groupValue: microlet,
//               onChanged: (value) {
//                 setState(() {
//                   microlet = value!;
//                 });
//               },
//             ),

//             Text("Hili ona: $microlet"),
//           ],
//         ),
//       ),
//     );
//   }
// }

//ezersisiu 2
// void main() {
//   runApp(MaterialApp(home: MikroletApp()));
// }

// class MikroletApp extends StatefulWidget {
//   @override
//   State<MikroletApp> createState() => _MikroletAppState();
// }

// class _MikroletAppState extends State<MikroletApp> {
//   String microlet = "Mikrolet 5";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("ezersisiu 1")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             RadioListTile<String>(
//               title: Text("Mikrolet 5"),
//               subtitle: Text("rota: Bekora"),
//               value: "Mikrolet 5",
//               groupValue: microlet,
//               onChanged: (value) {
//                 setState(() {
//                   microlet = value!;
//                 });
//               },
//             ),
//             RadioListTile<String>(
//               title: Text("Mikrolet 10"),
//               subtitle: Text("Rota: Vila verde"),
//               value: "Mikrolet 10",
//               groupValue: microlet,
//               onChanged: (value) {
//                 setState(() {
//                   microlet = value!;
//                 });
//               },
//             ),
//             RadioListTile<String>(
//               title: Text("Mikrolet 12"),
//               subtitle: Text("rota: tasi tolu"),
//               value: "Mikrolet 12",
//               groupValue: microlet,
//               onChanged: (value) {
//                 setState(() {
//                   microlet = value!;
//                 });
//               },
//             ),

//             Text("Hili ona: $microlet"),
//           ],
//         ),
//       ),
//     );
//   }
// }

//dezafiu extra
void main() {
  runApp(MaterialApp(home: MikroletApp()));
}

class MikroletApp extends StatefulWidget {
  @override
  State<MikroletApp> createState() => _MikroletAppState();
}

class _MikroletAppState extends State<MikroletApp> {
  String microlet = "Mikrolet 5";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ezersisiu 1")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.directions_bus),
            Text("Hili Mikrolet"),

            SizedBox(height: 20),
            RadioListTile<String>(
              title: Text("Mikrolet 5"),
              subtitle: Text("rota: Bekora"),
              value: "Mikrolet 5",
              groupValue: microlet,
              onChanged: (value) {
                setState(() {
                  microlet = value!;
                });
              },
            ),
            RadioListTile<String>(
              title: Text("Mikrolet 10"),
              subtitle: Text("Rota: Vila verde"),
              value: "Mikrolet 10",
              groupValue: microlet,
              onChanged: (value) {
                setState(() {
                  microlet = value!;
                });
              },
            ),
            RadioListTile<String>(
              title: Text("Mikrolet 12"),
              subtitle: Text("rota: tasi tolu"),
              value: "Mikrolet 12",
              groupValue: microlet,
              onChanged: (value) {
                setState(() {
                  microlet = value!;
                });
              },
            ),

            Text("Hili ona: $microlet"),

            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Mikrolet $microlet selesionadu")),
                );
              },
              child: Text("konfirma"),
            ),
          ],
        ),
      ),
    );
  }
}
