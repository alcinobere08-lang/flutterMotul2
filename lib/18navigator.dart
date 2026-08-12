import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(home: PajinaPrinsipal()));
// }

// class PajinaPrinsipal extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("prinsipal")),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => PajinaDetalle()),
//             );
//           },
//           child: Text("Hkat"),
//         ),
//       ),
//     );
//   }
// }

// class PajinaDetalle extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Detalhe")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("benvindu", style: TextStyle(fontSize: 24)),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               child: Text("fila"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//ezemplu 2
// void main() {
//   runApp(MaterialApp(home: ListaMikrolet()));
// }

// class ListaMikrolet extends StatelessWidget {
//   List<Map<String, dynamic>> microlet = [
//     {"numeru": 5, "rota": "Becora", "motorsta": "alcino", "status": "ativu"},
//     {"numeru": 6, "rota": "comoro", "motorsta": "basti", "status": "la ativu"},
//     {"numeru": 5, "rota": "bidau", "motorsta": "hermen", "status": "ativu"},
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Lista Mikrolet")),
//       body: ListView.builder(
//         itemCount: microlet.length,
//         itemBuilder: (context, index) {
//           return Card(
//             margin: EdgeInsets.all(10),
//             child: ListTile(
//               leading: Icon(Icons.directions_bus_outlined),
//               title: Text("Mikrolet ${microlet[index]["numeru"]}"),
//               subtitle: Text("rota ${microlet[index]["rota"]}"),
//               trailing: Icon(Icons.arrow_back_ios),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) =>
//                         DetalleMikrolet(microlet: microlet[index]),
//                   ),
//                 );
//               },
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// //dadus husi pajia detalle ba pajina detallemicrlet
// class DetalleMikrolet extends StatelessWidget {
//   final Map<String, dynamic> microlet;
//   DetalleMikrolet({required this.microlet});
//   @override
//   Widget build(BuildContext Context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("detalle mikrolet")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(Icons.directions_bus, size: 80),
//             SizedBox(height: 20),
//             Text(
//               "Mikrolet ${microlet["numeru"]}",
//               style: TextStyle(fontSize: 24),
//             ),
//             Text("Rota: ${microlet["rota"]}"),
//             Text("Motorista: ${microlet["motorsta"]}"),
//             Text("Status: ${microlet["status"]}"),
//           ],
//         ),
//       ),
//     );
//   }
// }

//ezersisiu 1
// void main() {
//   runApp(MaterialApp(home: PajinaPrinsipal()));
// }

// class PajinaPrinsipal extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("prinsipal")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Informasaun", style: TextStyle(fontSize: 24)),
//             SizedBox(height: 20),
//             Text("Naran: Alcino"),
//             Text("Universidade: DIT"),
//             SizedBox(height: 25),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => PajinaDetalle()),
//                 );
//               },
//               child: Text("Haree Detalle"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class PajinaDetalle extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Detalhe")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Detalle", style: TextStyle(fontSize: 24)),
//             SizedBox(height: 20),
//             Text("Naran: Alcino"),
//             Text("Kursu: Informatika"),
//             SizedBox(height: 20),

//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               child: Text("fila"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//ezersisiu 2
// void main() {
//   runApp(MaterialApp(home: ListaMikrolet()));
// }

// class ListaMikrolet extends StatelessWidget {
//   List<Map<String, dynamic>> microlet = [
//     {"numeru": 5, "rota": "Becora", "motorsta": "alcino", "status": "ativu"},
//     {"numeru": 10, "rota": "Comoro", "motorsta": "Joao", "status": "la ativu"},
//     {
//       "numeru": 12,
//       "rota": "Tasi Tolu",
//       "motorsta": "hermen",
//       "status": "ativu",
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Lista Mikrolet")),
//       body: ListView.builder(
//         itemCount: microlet.length,
//         itemBuilder: (context, index) {
//           return Card(
//             margin: EdgeInsets.all(10),
//             child: ListTile(
//               leading: Icon(Icons.directions_bus_outlined),
//               title: Text("Mikrolet ${microlet[index]["numeru"]}"),
//               subtitle: Text("rota ${microlet[index]["rota"]}"),
//               trailing: Icon(Icons.arrow_back_ios),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) =>
//                         DetalleMikrolet(microlet: microlet[index]),
//                   ),
//                 );
//               },
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// //dadus husi pajia detalle ba pajina detallemicrlet
// class DetalleMikrolet extends StatelessWidget {
//   final Map<String, dynamic> microlet;
//   DetalleMikrolet({required this.microlet});
//   @override
//   Widget build(BuildContext Context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("detalle mikrolet")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(Icons.directions_bus, size: 80),
//             SizedBox(height: 20),
//             Text(
//               "Mikrolet ${microlet["numeru"]}",
//               style: TextStyle(fontSize: 24),
//             ),
//             Text("Rota: ${microlet["rota"]}"),
//             Text("Motorista: ${microlet["motorsta"]}"),
//             Text("Status: ${microlet["status"]}"),
//           ],
//         ),
//       ),
//     );
//   }
// }

//dezafiu extra
void main() {
  runApp(MaterialApp(home: ListaMikrolet()));
}

class ListaMikrolet extends StatelessWidget {
  List<Map<String, dynamic>> mikrolet = [
    {"numeru": 5, "rota": "Becora", "motorista": "Manuel", "status": "Ativu"},
    {"numeru": 10, "rota": "Comoro", "motorista": "Joao", "status": "La Ativu"},
    {
      "numeru": 12,
      "rota": "Tasi Tolu",
      "motorista": "Pedro",
      "status": "Ativu",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lista Mikrolet")),
      body: ListView.builder(
        itemCount: mikrolet.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.directions_bus_outlined),
              title: Text("Mikrolet ${mikrolet[index]["numeru"]}"),
              subtitle: Text("rota ${mikrolet[index]["rota"]}"),
              trailing: Icon(Icons.arrow_back_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetalleMikrolet(microlet: mikrolet[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

//dadus husi pajia detalle ba pajina detallemicrlet
class DetalleMikrolet extends StatelessWidget {
  final Map<String, dynamic> microlet;
  DetalleMikrolet({required this.microlet});
  @override
  Widget build(BuildContext Context) {
    return Scaffold(
      appBar: AppBar(title: Text("detalle mikrolet")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.directions_bus, size: 80),
            SizedBox(height: 20),
            Text(
              "Mikrolet ${microlet["numeru"]}",
              style: TextStyle(fontSize: 24),
            ),
            Text("Rota: ${microlet["rota"]}"),
            Text("Motorista: ${microlet["motorsta"]}"),
            Text("Status: ${microlet["status"]}"),
          ],
        ),
      ),
    );
  }
}
