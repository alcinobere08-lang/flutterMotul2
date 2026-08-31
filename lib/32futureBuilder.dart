import 'package:flutter/material.dart';
// import 'package:mapa_mikrolet/29radio.dart';

// void main() {
//   runApp(MaterialApp(home: MikroletApp()));
// }

// class MikroletApp extends StatelessWidget {
//   Future<String> bukaRota() async {
//     await Future.delayed(Duration(seconds: 3));
//     return "Mikrolet 5 - Becora";
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Buka rota")),
//       body: Center(
//         child: FutureBuilder<String>(
//           future: bukaRota(),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return CircularProgressIndicator();
//             }
//             return Text(snapshot.data!, style: TextStyle(fontSize: 24));
//           },
//         ),
//       ),
//     );
//   }
// }

//
// void main() {
//   runApp(MaterialApp(home: MikroletApp()));
// }

// class MikroletApp extends StatelessWidget {
//   Future<String> bukaRota() async {
//     await Future.delayed(Duration(seconds: 3));
//     return "Mikrolet 5 - Becora";
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Buka rota")),
//       body: Center(
//         child: FutureBuilder<String>(
//           future: bukaRota(),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return CircularProgressIndicator();
//             }
//             if (snapshot.hasError) {
//               return Text("iha error");
//             }
//             return Text(snapshot.data!);
//           },
//         ),
//       ),
//     );
//   }
// }

//ezersisiu 1
// void main() {
//   runApp(MaterialApp(home: MikroletApp()));
// }

// class MikroletApp extends StatelessWidget {
//   Future<String> bukaRota() async {
//     await Future.delayed(Duration(seconds: 3));
//     return "Mikrolet 10 - comoro";
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("buka deit ba bro")),
//       body: Center(
//         child: FutureBuilder<String>(
//           future: bukaRota(),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return CircularProgressIndicator();
//             }
//             return Text(snapshot.data!, style: TextStyle(fontSize: 23));
//           },
//         ),
//       ),
//     );
//   }
// }

//ezersisiu 2
// void main() {
//   runApp(MaterialApp(home: MikroletApp()));
// }

// class MikroletApp extends StatelessWidget {
//   Future<String> bukaGPS() async {
//     await Future.delayed(Duration(seconds: 3));
//     return "Latitude: -8.5569\nLongitude: 125.5603";
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("buka deit ba bro")),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(Icons.location_on_rounded, size: 20),
//               SizedBox(width: 10),
//               Text("GPS"),
//             ],
//           ),
//           SizedBox(height: 20),

//           FutureBuilder<String>(
//             future: bukaGPS(),
//             builder: (context, snapshot) {
//               if (snapshot.connectionState == ConnectionState.waiting) {
//                 return CircularProgressIndicator();
//               }
//               return Text(snapshot.data!, style: TextStyle(fontSize: 23));
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

//dezafiu extra
void main() {
  runApp(MaterialApp(home: MikroletApp()));
}

class MikroletApp extends StatelessWidget {
  Future<String> bukaGPS() async {
    await Future.delayed(Duration(seconds: 3));
    return "Mikrolet 5 \n Rota: Becora";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("buka deit ba bro")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on_rounded, size: 20),
              SizedBox(width: 10),
              Text("GPS"),
            ],
          ),
          SizedBox(height: 20),

          FutureBuilder<String>(
            future: bukaGPS(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              }
              if (snapshot.hasError) {
                return Text("errorr");
              }
              return Text(snapshot.data!, style: TextStyle(fontSize: 23));
            },
          ),
        ],
      ),
    );
  }
}
