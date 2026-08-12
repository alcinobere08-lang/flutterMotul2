import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(home: Pajinaprinsipal()));
// }

// class Pajinaprinsipal extends StatelessWidget {
//   final TextEditingController controller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Buka Destinu")),
//       body: Padding(
//         padding: EdgeInsets.all(20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: controller,
//               decoration: InputDecoration(
//                 hintText: "hakerek destinasaun",
//                 prefixIcon: Icon(Icons.search),
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton.icon(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) =>
//                         TelaRota(destinasaun: controller.text),
//                   ),
//                 );
//               },
//               icon: Icon(Icons.search),
//               label: Text("Buka rota"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class TelaRota extends StatelessWidget {
//   final String destinasaun;
//   TelaRota({required this.destinasaun});
//   @override
//   Widget build(BuildContext Context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Rota Mikrolet")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(Icons.directions_bus, size: 80),
//             SizedBox(height: 20),
//             Text("destinasaun $destinasaun", style: TextStyle(fontSize: 22)),
//             SizedBox(height: 20),
//             Text("Mikrolet 5", style: TextStyle(fontSize: 24)),
//             Text("rota: becora"),
//           ],
//         ),
//       ),
//     );
//   }
// }

void main() {
  runApp(MaterialApp(home: BukaNaran()));
}

class BukaNaran extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Buka naran")),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: "buka naran",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => hatudu(naran: controller.text),
                  ),
                );
              },
              icon: Icon(Icons.search),
              label: Text("buka naran"),
            ),
          ],
        ),
      ),
    );
  }
}

class hatudu extends StatelessWidget {
  final String naran;
  hatudu({required this.naran});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hatudu")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person_2, size: 70),
            SizedBox(height: 10),
            Text("Ola $naran ! ", style: TextStyle(fontSize: 22)),
          ],
        ),
      ),
    );
  }
}
