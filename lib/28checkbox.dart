import 'package:flutter/material.dart';
// import 'package:mapa_mikrolet/27dropdownbutton.dart';

// void main() {
//   runApp(MaterialApp(home: MinhaPagina()));
// }

// class MinhaPagina extends StatefulWidget {
//   @override
//   State<MinhaPagina> createState() => _MinhaPaginaState();
// }

// class _MinhaPaginaState extends State<MinhaPagina> {
//   bool mikroletAtivu = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Checkbox")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Checkbox(
//               value: mikroletAtivu,
//               onChanged: (value) {
//                 setState(() {
//                   mikroletAtivu = value!;
//                 });
//               },
//             ),

//             Text(
//               mikroletAtivu ? "Mikrolet Ativu" : "Mikrolet La Ativu",
//               style: TextStyle(fontSize: 22),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//switch
// void main() {
//   runApp(MaterialApp(home: Mikrolet()));
// }

// class Mikrolet extends StatefulWidget {
//   @override
//   State<Mikrolet> createState() => _MikroletState();
// }

// class _MikroletState extends State<Mikrolet> {
//   bool ativu = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("GPS ativu")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Switch(
//               value: ativu,
//               onChanged: (Value) {
//                 setState(() {
//                   ativu = Value;
//                 });
//               },
//             ),
//             Text(
//               ativu ? "Status: Mikrolet Ativu" : "Status: Mikrolet La ativu",
//               style: TextStyle(fontSize: 22),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//ezersisiu 1

// void main() {
//   runApp(MaterialApp(home: MikroletAtivu()));
// }

// class MikroletAtivu extends StatefulWidget {
//   @override
//   State<MikroletAtivu> createState() => _MikroletAtivuState();
// }

// class _MikroletAtivuState extends State<MikroletAtivu> {
//   bool MikroletAtivu = false;

//   @override
//   Widget build(BuildContext Context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("hili ida")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Checkbox(
//               value: MikroletAtivu,
//               onChanged: (value) {
//                 setState(() {
//                   MikroletAtivu = value!;
//                 });
//               },
//             ),
//             Text(
//               MikroletAtivu ? "Mikrolet Ativu" : "Mikrolet la ativu",
//               style: TextStyle(fontSize: 23),
//             ),
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
//   bool ativu = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("GPS ativu")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(Icons.location_on),
//             SizedBox(height: 10),
//             Text("GPS mikrolet", style: TextStyle(fontSize: 24)),
//             SizedBox(height: 10),
//             Switch(
//               value: ativu,
//               onChanged: (Value) {
//                 setState(() {
//                   ativu = Value;
//                 });
//               },
//             ),

//             Text(
//               ativu ? "GPS:  Ativu" : "GPS:  La ativu",
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
  bool status = false;
  List<Map<String, dynamic>> microlet = [
    {"numeru": 5, "rota": "Becora"},
    {"numeru": 10, "rota": "Comoro"},
    {"numeru": 12, "rota": "Tasi Tolu"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GPS ativu")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListView.builder(
              itemCount: microlet.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: Icon(Icons.directions_bus),
                    title: Text("Mikrolet ${microlet[index]["numeru"]}"),
                    subtitle: Text("rota: ${microlet[index]["rota"]}"),
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            Switch(
              value: status,
              onChanged: (value) {
                setState(() {
                  status = value;
                });
              },
            ),
            Text(status ? "Status: ativu" : "Status: la ativu"),
          ],
        ),
      ),
    );
  }
}
