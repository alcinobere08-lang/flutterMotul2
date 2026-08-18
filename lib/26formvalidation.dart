import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(home: Buka()));
// }

// class Buka extends StatefulWidget {
//   @override
//   State<Buka> createState() => _bukaState();
// }

// class _bukaState extends State<Buka> {
//   TextEditingController controller = TextEditingController();

//   List<Map<String, dynamic>> microlet = [
//     {"numeru": 5, "rota": "Becora"},
//     {"numeru": 10, "rota": "Comoro"},
//     {"numeru": 12, "rota": "Tasi Tolu"},
//   ];
//   List<Map<String, dynamic>> resultadu = [];
//   @override
//   void initState() {
//     super.initState();
//     resultadu = microlet;
//   }

//   void Bukarota() {
//     if (controller.text.isEmpty) {
//       ScaffoldMessenger.of(
//         context,
//       ).showSnackBar(SnackBar(content: Text("favor hakerek destinasaun")));
//     } else {
//       setState(() {
//         resultadu = microlet.where((item) {
//           return item["rota"].toString().toLowerCase().contains(
//             controller.text.toLowerCase(),
//           );
//         }).toList();
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("hahae")),
//       body: Padding(
//         padding: EdgeInsets.all(15),
//         child: Column(
//           children: [
//             TextField(
//               controller: controller,
//               decoration: InputDecoration(
//                 hintText: "hakerek nahuran",
//                 prefixIcon: Icon(Icons.search),
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 10),
//             ElevatedButton.icon(
//               onPressed: Bukarota,
//               icon: Icon(Icons.search),
//               label: Text("krik"),
//             ),
//             SizedBox(height: 5),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: resultadu.length,
//                 itemBuilder: (context, index) {
//                   return Card(
//                     child: ListTile(
//                       leading: Icon(Icons.car_rental),
//                       title: Text("Mikrolet ${resultadu[index]["numeru"]}"),
//                       subtitle: Text("Rota: ${resultadu[index]["rota"]}"),
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

//ezersisiu 2
// void main() {
//   runApp(MaterialApp(home: Buka()));
// }

// class Buka extends StatefulWidget {
//   @override
//   State<Buka> createState() => _bukaState();
// }

// class _bukaState extends State<Buka> {
//   TextEditingController controller = TextEditingController();

//   List<Map<String, dynamic>> microlet = [
//     {"numeru": 5, "rota": "Becora", "motorista": "ajaun"},
//     {"numeru": 10, "rota": "Comoro", "motorista": "huria"},
//     {"numeru": 12, "rota": "Tasi Tolu", "motorista": "hahaha"},
//   ];
//   List<Map<String, dynamic>> resultadu = [];
//   @override
//   void initState() {
//     super.initState();
//     resultadu = microlet;
//   }

//   void Bukarota() {
//     if (controller.text.isEmpty) {
//       ScaffoldMessenger.of(
//         context,
//       ).showSnackBar(SnackBar(content: Text("favor hakerek destinasaun")));
//     } else {
//       setState(() {
//         resultadu = microlet.where((item) {
//           return item["rota"].toString().toLowerCase().contains(
//             controller.text.toLowerCase(),
//           );
//         }).toList();
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("hahae")),
//       body: Padding(
//         padding: EdgeInsets.all(15),
//         child: Column(
//           children: [
//             TextField(
//               controller: controller,
//               decoration: InputDecoration(
//                 hintText: "hakerek nahuran",
//                 prefixIcon: Icon(Icons.search),
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 10),
//             ElevatedButton.icon(
//               onPressed: Bukarota,
//               icon: Icon(Icons.search),
//               label: Text("krik"),
//             ),
//             SizedBox(height: 5),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: resultadu.length,
//                 itemBuilder: (context, index) {
//                   return Card(
//                     child: ListTile(
//                       leading: Icon(Icons.car_rental),
//                       title: Text("Mikrolet ${resultadu[index]["numeru"]}"),
//                       subtitle: Text(
//                         "Rota: ${resultadu[index]["rota"]}\n"
//                         "Motorista: ${resultadu[index]["motorista"]}",
//                       ),
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
  runApp(MaterialApp(home: Buka()));
}

class Buka extends StatefulWidget {
  @override
  State<Buka> createState() => _bukaState();
}

class _bukaState extends State<Buka> {
  TextEditingController controller = TextEditingController();

  List<Map<String, dynamic>> microlet = [
    {"numeru": 5, "rota": "Becora", "motorista": "ajaun"},
    {"numeru": 10, "rota": "Comoro", "motorista": "huria"},
    {"numeru": 12, "rota": "Tasi Tolu", "motorista": "hahaha"},
  ];
  List<Map<String, dynamic>> resultadu = [];
  @override
  void initState() {
    super.initState();
    resultadu = microlet;
  }

  void Bukarota() {
    if (controller.text.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Favor hakerek destinasaun")));
    } else {
      List<Map<String, dynamic>> temp = microlet.where((item) {
        return item["rota"].toString().toLowerCase().contains(
          controller.text.toLowerCase(),
        );
      }).toList();

      if (temp.isEmpty) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("Destinu la hetan")));
      } else {
        setState(() {
          resultadu = temp;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hahae")),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: "hakerek nahuran",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: Bukarota,
              icon: Icon(Icons.search),
              label: Text("krik"),
            ),
            SizedBox(height: 5),
            Expanded(
              child: ListView.builder(
                itemCount: resultadu.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Icon(Icons.car_rental),
                      title: Text("Mikrolet ${resultadu[index]["numeru"]}"),
                      subtitle: Text(
                        "Rota: ${resultadu[index]["rota"]}\n"
                        "Motorista: ${resultadu[index]["motorista"]}",
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
