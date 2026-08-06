import 'package:flutter/material.dart';

// TextEditingController controller = TextEditingController();

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Text editing controller")),
//         body: Padding(
//           padding: EdgeInsets.all(20),
//           child: Column(
//             children: [
//               TextField(
//                 controller: controller,
//                 decoration: InputDecoration(
//                   hintText: "Hakerek destinasaun",
//                   labelText: "hehe",
//                   prefixIcon: Icon(Icons.search),
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   print(controller.text);
//                 },
//                 child: Text("Buka"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }

//ezersisiu 1
// TextEditingController controller = TextEditingController();

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Buka Destinu")),
//         body: Padding(
//           padding: EdgeInsets.all(20),
//           child: Column(
//             children: [
//               TextField(
//                 controller: controller,
//                 decoration: InputDecoration(
//                   hintText: "Hakerek Destinasaun",
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   print(controller.text);
//                 },
//                 child: Text("Buka"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }

//ezersisiu 2
// TextEditingController controller = TextEditingController();

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Buka Destinu")),
//         body: Padding(
//           padding: EdgeInsets.all(20),
//           child: Column(
//             children: [
//               Text("Naran Utilizador", style: TextStyle(fontSize: 24)),
//               SizedBox(height: 20),
//               TextField(
//                 controller: controller,
//                 decoration: InputDecoration(
//                   prefixIcon: Icon(Icons.person),
//                   hintText: "Hakerek naran",
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   print(controller.text);
//                 },
//                 child: Text("hatudu"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }

//dezafiu extra
TextEditingController controller = TextEditingController();

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Buka Destinu")),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Icon(
                Icons.directions_bus_filled,
                size: 20,
                color: Colors.blueAccent,
              ),
              SizedBox(height: 15),
              Text("Naran Utilizador", style: TextStyle(fontSize: 24)),
              SizedBox(height: 20),
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Hakerek destinasaun",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  print("Destinu: ${controller.text}");
                },
                icon: Icon(Icons.search_off),
                label: Text("Buka Rota"),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
