import 'package:flutter/material.dart';

//ezersisiu1
// void main() {
//   runApp(MaterialApp(home: Listamicrolet()));
// }

// class Listamicrolet extends StatelessWidget {
//   List<Map<String, dynamic>> microlet = [
//     {"numeru": 7, "rota": "becora", "motorista": "rui", "status": "ativu"},
//     {"numeru": 8, "rota": "teriinal", "motorista": "al", "status": "la ativu"},
//     {"numeru": 0, "rota": "hahae", "motorista": "siku", "status": "ativu"},
//     {"numeru": 1, "rota": "uma", "motorista": "sakana", "status": "la ativu"},
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("hahae")),
//       body: ListView.builder(
//         itemCount: microlet.length,
//         itemBuilder: (context, index) {
//           return Card(
//             child: ListTile(
//               leading: Icon(Icons.directions_boat),
//               title: Text("Mikrolet ${microlet[index]["numeru"]}"),
//               subtitle: Text("rota: ${microlet[index]["rota"]}"),
//               trailing: Icon(Icons.arrow_back_ios_new),
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

// class DetalleMikrolet extends StatelessWidget {
//   final Map<String, dynamic> microlet;
//   DetalleMikrolet({required this.microlet});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("hehe")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(Icons.directions_bus_filled_rounded, size: 70),
//             SizedBox(height: 20),
//             Text(
//               "Mikrolet ${microlet["numeru"]}",
//               style: TextStyle(fontSize: 25),
//             ),
//             Text("rota: ${microlet["rota"]}"),
//           ],
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(home: Listamicrolet()));
// }

// class Listamicrolet extends StatelessWidget {
//   List<Map<String, dynamic>> microlet = [
//     {"numeru": 5, "rota": "becora"},
//     {"numeru": 10, "rota": "comoro"},
//     {"numeru": 12, "rota": "tasi tolu"},
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("hahae")),
//       body: ListView.builder(
//         itemCount: microlet.length,
//         itemBuilder: (context, index) {
//           return Card(
//             child: ListTile(
//               // leading: Icon(Icons.directions_boat),
//               title: Text("Mikrolet ${microlet[index]["numeru"]}"),
//               subtitle: Text("rota: ${microlet[index]["rota"]}"),
//               // trailing: Icon(Icons.arrow_back_ios_new),
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

// class DetalleMikrolet extends StatelessWidget {
//   final Map<String, dynamic> microlet;
//   DetalleMikrolet({required this.microlet});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("hehe")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "Mikrolet ${microlet["numeru"]}",
//               style: TextStyle(fontSize: 25),
//             ),
//             Text("rota: ${microlet["rota"]}"),
//           ],
//         ),
//       ),
//     );
//   }
// }

//dezafiu extra
void main() {
  runApp(MaterialApp(home: Listamicrolet()));
}

class Listamicrolet extends StatelessWidget {
  List<Map<String, dynamic>> microlet = [
    {"numeru": 7, "rota": "becora", "motorista": "rui", "status": "ativu"},
    {"numeru": 8, "rota": "teriinal", "motorista": "al", "status": "la ativu"},
    {"numeru": 0, "rota": "hahae", "motorista": "siku", "status": "ativu"},
    {"numeru": 1, "rota": "uma", "motorista": "sakana", "status": "la ativu"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hahae")),
      body: ListView.builder(
        itemCount: microlet.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.directions_boat),
              title: Text("Mikrolet ${microlet[index]["numeru"]}"),
              subtitle: Text("rota: ${microlet[index]["rota"]}"),
              trailing: Icon(Icons.arrow_back_ios_new),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetalleMikrolet(microlet: microlet[index]),
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

class DetalleMikrolet extends StatelessWidget {
  final Map<String, dynamic> microlet;
  DetalleMikrolet({required this.microlet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hehe")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.directions_bus_filled_rounded, size: 70),
            SizedBox(height: 20),
            Text(
              "Mikrolet ${microlet["numeru"]}",
              style: TextStyle(fontSize: 25),
            ),
            Text("rota: ${microlet["rota"]}"),
            Text("motorista: ${microlet["motorista"]}"),
            Text("status: ${microlet["status"]}"),
          ],
        ),
      ),
    );
  }
}
