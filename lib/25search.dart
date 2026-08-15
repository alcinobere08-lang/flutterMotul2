import 'dart:ffi';

import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(home: searchMikrolet()));
// }

// class searchMikrolet extends StatefulWidget {
//   @override
//   State<searchMikrolet> createState() => _searchMikroletState();
// }

// class _searchMikroletState extends State<searchMikrolet> {
//   TextEditingController controller = TextEditingController();

//   List<Map<String, dynamic>> mikrolet = [
//     {"numeru": 5, "rota": "Becora"},
//     {"numeru": 10, "rota": "Comoro"},
//     {"numeru": 12, "rota": "Tasi tolu"},
//   ];
//   List<Map<String, dynamic>> resultadu = [];

//   @override
//   void inistate() {
//     super.initState();
//     resultadu = mikrolet;
//   }

//   void bukaRota() {
//     setState(() {
//       resultadu = mikrolet.where((item) {
//         return item["rota"].toString().toLowerCase().contains(
//           controller.text.toLowerCase(),
//         );
//       }).toList();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("buka destinu")),
//       body: Padding(
//         padding: EdgeInsets.all(15),
//         child: Column(
//           children: [
//             TextField(
//               controller: controller,
//               decoration: InputDecoration(
//                 hintText: "input destinasaun",
//                 prefixIcon: Icon(Icons.search),
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton.icon(
//               onPressed: bukaRota,
//               icon: Icon(Icons.search),
//               label: Text("Buka"),
//             ),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: resultadu.length,
//                 itemBuilder: (context, index) {
//                   return Card(
//                     child: ListTile(
//                       leading: Icon(Icons.directions_bus),
//                       title: Text("Mikrolet ${resultadu[index]["numeru"]}"),
//                       subtitle: Text("Rota ${resultadu[index]["rota"]}"),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//ezersisiu 1
// void main() {
//   runApp(MaterialApp(home: Bukadeit()));
// }

// class Bukadeit extends StatefulWidget {
//   @override
//   State<Bukadeit> createState() => _BukadeitState();
// }

// class _BukadeitState extends State<Bukadeit> {
//   TextEditingController controller = TextEditingController();
//   List<Map<String, dynamic>> microlet = [
//     {"numeru": 5, "rota": "Becora"},
//     {"numeru": 10, "rota": "Comoro"},
//     {"numeru": 12, "rota": "Tasi Tolu"},
//     {"numeru": 15, "rota": "Bidau"},
//   ];

//   List<Map<String, dynamic>> resultadu = [];

//   @override
//   void inistate() {
//     super.initState();
//     resultadu = microlet;
//   }

//   void searchDestination() {
//     setState(() {
//       resultadu = microlet.where((item) {
//         return item["rota"].toString().toLowerCase().contains(
//           controller.text.toLowerCase(),
//         );
//       }).toList();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("buka destinu")),
//       body: Padding(
//         padding: EdgeInsets.all(15),
//         child: Column(
//           children: [
//             TextField(
//               controller: controller,
//               decoration: InputDecoration(
//                 hintText: "input destinasaun",
//                 prefixIcon: Icon(Icons.search_rounded),
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 15),
//             ElevatedButton.icon(
//               onPressed: searchDestination,
//               icon: Icon(Icons.search),
//               label: Text("search"),
//             ),
//             SizedBox(height: 15),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: resultadu.length,
//                 itemBuilder: (context, index) {
//                   return Card(
//                     child: ListTile(
//                       leading: Icon(Icons.car_crash_outlined),
//                       title: Text("mikrolet ${resultadu[index]["numeru"]}"),
//                       subtitle: Text("rota: ${resultadu[index]["rota"]}"),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//dezafiu extra
void main() {
  runApp(MaterialApp(home: Bukadeit()));
}

class Bukadeit extends StatefulWidget {
  @override
  State<Bukadeit> createState() => _BukadeitState();
}

class _BukadeitState extends State<Bukadeit> {
  TextEditingController controller = TextEditingController();
  List<Map<String, dynamic>> microlet = [
    {"numeru": 5, "rota": "Becora", "motorista": "amanu"},
    {"numeru": 10, "rota": "Comoro", "motorista": "apeu"},
    {"numeru": 12, "rota": "Tasi Tolu", "motorista": "jake"},
    {"numeru": 15, "rota": "Bidau", "motorista": "jp"},
  ];

  List<Map<String, dynamic>> resultadu = [];

  @override
  void inistate() {
    super.initState();
    resultadu = microlet;
  }

  void searchDestination() {
    setState(() {
      resultadu = microlet.where((item) {
        return item["rota"].toString().toLowerCase().contains(
          controller.text.toLowerCase(),
        );
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("buka destinu")),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: "input destinasaun",
                prefixIcon: Icon(Icons.search_rounded),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton.icon(
              onPressed: searchDestination,
              icon: Icon(Icons.search),
              label: Text("search"),
            ),
            SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                itemCount: resultadu.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Icon(Icons.car_crash_outlined),
                      title: Text("mikrolet ${resultadu[index]["numeru"]}"),
                      subtitle: Text(
                        "rota: ${resultadu[index]["rota"]}\n"
                        "motorista: ${resultadu[index]["motorista"]}",
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
