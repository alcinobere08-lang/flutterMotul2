import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("GuesturDetector")),
//         body: Center(
//           child: GestureDetector(
//             onTap: () {
//               print("Mikrolet 5 selesionadu");
//             },
//             child: Card(
//               child: ListTile(
//                 leading: Icon(Icons.directions_bus),
//                 title: Text("Mikrolet 5"),
//                 subtitle: Text("rota: Bekora"),
//               ),
//             ),
//           ),
//         ),
//       ),
//     ),
//   );
//}

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("GuesturDetector")),
//         body: Center(
//           child: GestureDetector(
//             onTap: () {
//               print("Hare mapa");
//             },
//             child: Container(
//               width: 300,
//               height: 250,
//               color: Colors.blueGrey,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [Icon(Icons.map), Text("Mapa Dili")],
//               ),
//             ),
//           ),
//         ),
//       ),
//     ),
//   );
// }

void main() {
  runApp(MaterialApp(home: pajinaprinsipal()));
}

class pajinaprinsipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("pajina prinsipal")),
      body: Center(
        child: Card(
          child: ListTile(
            leading: Icon(Icons.directions_bus),
            title: Text("Mikrolet 12"),
            subtitle: Text(
              "Rota: Tasi Tolu\n"
              "Status: ativu",
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PajinaDetalle()),
              );
            },
          ),
        ),
      ),
    );
  }
}

class PajinaDetalle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("pajina detalle")),
      body: Center(
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.directions_bus_filled),
              SizedBox(height: 20),
              Text("Mikrolet 12"),
              SizedBox(height: 10),
              ListTile(
                title: Text("Rota Tasi Tolu"),
                subtitle: Text(
                  "Motorista:Pedro \n"
                  "Status: ativu \n",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
