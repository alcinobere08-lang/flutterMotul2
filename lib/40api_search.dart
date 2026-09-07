//ezersisiu 1
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MikroletApp()));
// }

// class Mikrolet {
//   int numeru;
//   String rota;
//   String motorista;
//   int status;

//   Mikrolet({
//     required this.numeru,
//     required this.rota,
//     required this.motorista,
//     required this.status,
//   });

//   factory Mikrolet.fromJson(Map<String, dynamic> json) {
//     return Mikrolet(
//       numeru: json["id"],
//       rota: json["title"],
//       motorista: json["body"],
//       status: json["userId"],
//     );
//   }
// }

// Future<List<Mikrolet>> bukaMikrolet() async {
//   final response = await http.get(
//     Uri.parse("https://jsonplaceholder.typicode.com/posts"),
//   );

//   if (response.statusCode == 200) {
//     List<dynamic> jsonData = jsonDecode(response.body);

//     List<Mikrolet> mikrolet = jsonData
//         .map((item) => Mikrolet.fromJson(item))
//         .toList();

//     return mikrolet;
//   } else {
//     throw Exception("Falha atu buka dadus");
//   }
// }

// class MikroletApp extends StatefulWidget {
//   const MikroletApp({super.key});

//   @override
//   State<MikroletApp> createState() => _MikroletAppState();
// }

// class _MikroletAppState extends State<MikroletApp> {
//   late Future<List<Mikrolet>> futureMikrolet;

//   TextEditingController searchController = TextEditingController();

//   List<Mikrolet> resultadu = [];

//   @override
//   void initState() {
//     super.initState();

//     futureMikrolet = bukaMikrolet();
//   }

//   void bukaSearch(String keyword, List<Mikrolet> mikrolet) {
//     setState(() {
//       resultadu = mikrolet.where((item) {
//         return item.rota.toLowerCase().contains(keyword.toLowerCase());
//       }).toList();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Buka Mikrolet")),

//       body: FutureBuilder<List<Mikrolet>>(
//         future: futureMikrolet,

//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }

//           if (snapshot.hasError) {
//             return Center(child: Text("Error: ${snapshot.error}"));
//           }

//           List<Mikrolet> mikrolet = snapshot.data ?? [];

//           // Se user seidauk buka search,
//           // hatudu dadus hotu.
//           List<Mikrolet> lista = searchController.text.isEmpty
//               ? mikrolet
//               : resultadu;

//           return Column(
//             children: [
//               Padding(
//                 padding: EdgeInsets.all(16),

//                 child: TextField(
//                   controller: searchController,

//                   decoration: InputDecoration(
//                     labelText: "Buka rota",
//                     hintText: "Ez: Comoro",
//                     prefixIcon: Icon(Icons.search),
//                     border: OutlineInputBorder(),
//                   ),

//                   onChanged: (value) {
//                     bukaSearch(value, mikrolet);
//                   },
//                 ),
//               ),

//               Expanded(
//                 child: ListView.builder(
//                   itemCount: lista.length,

//                   itemBuilder: (context, index) {
//                     return Card(
//                       child: ListTile(
//                         leading: Icon(Icons.directions_bus),

//                         title: Text("Mikrolet ${lista[index].numeru}"),

//                         subtitle: Text(
//                           "Rota: ${lista[index].rota}\n"
//                           "Motorista: ${lista[index].motorista}\n"
//                           "Status: ${lista[index].status}",
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     searchController.dispose();
//     super.dispose();
//   }
// }

//ezersisiu 2
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MikroletApp()));
// }

// class Mikrolet {
//   int numeru;
//   String rota;
//   String motorista;
//   int status;

//   Mikrolet({
//     required this.numeru,
//     required this.rota,
//     required this.motorista,
//     required this.status,
//   });

//   factory Mikrolet.fromJson(Map<String, dynamic> json) {
//     return Mikrolet(
//       numeru: json["id"],
//       rota: json["title"],
//       motorista: json["body"],
//       status: json["userId"],
//     );
//   }
// }

// Future<List<Mikrolet>> bukaMikrolet() async {
//   final response = await http.get(
//     Uri.parse("https://jsonplaceholder.typicode.com/posts"),
//   );

//   if (response.statusCode == 200) {
//     List<dynamic> jsonData = jsonDecode(response.body);

//     List<Mikrolet> mikrolet = jsonData
//         .map((item) => Mikrolet.fromJson(item))
//         .toList();

//     return mikrolet;
//   } else {
//     throw Exception("Falha atu buka dadus");
//   }
// }

// class MikroletApp extends StatefulWidget {
//   const MikroletApp({super.key});

//   @override
//   State<MikroletApp> createState() => _MikroletAppState();
// }

// class _MikroletAppState extends State<MikroletApp> {
//   late Future<List<Mikrolet>> futureMikrolet;

//   TextEditingController searchController = TextEditingController();

//   List<Mikrolet> resultadu = [];

//   @override
//   void initState() {
//     super.initState();

//     futureMikrolet = bukaMikrolet();
//   }

//   void bukaSearch(String keyword, List<Mikrolet> mikrolet) {
//     setState(() {
//       resultadu = mikrolet.where((item) {
//         return item.numeru.toString().contains(keyword);
//       }).toList();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Buka Mikrolet")),

//       body: FutureBuilder<List<Mikrolet>>(
//         future: futureMikrolet,

//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }

//           if (snapshot.hasError) {
//             return Center(child: Text("Error: ${snapshot.error}"));
//           }

//           List<Mikrolet> mikrolet = snapshot.data ?? [];

//           // Se user seidauk buka search,
//           // hatudu dadus hotu.
//           List<Mikrolet> lista = searchController.text.isEmpty
//               ? mikrolet
//               : resultadu;

//           return Column(
//             children: [
//               Padding(
//                 padding: EdgeInsets.all(16),

//                 child: TextField(
//                   controller: searchController,

//                   decoration: InputDecoration(
//                     labelText: "Buka rota",
//                     hintText: "Ez: Comoro",
//                     prefixIcon: Icon(Icons.search),
//                     border: OutlineInputBorder(),
//                   ),

//                   onChanged: (value) {
//                     bukaSearch(value, mikrolet);
//                   },
//                 ),
//               ),

//               Expanded(
//                 child: ListView.builder(
//                   itemCount: lista.length,

//                   itemBuilder: (context, index) {
//                     return Card(
//                       child: ListTile(
//                         leading: Icon(Icons.directions_bus),

//                         title: Text("Mikrolet ${lista[index].numeru}"),

//                         subtitle: Text(
//                           "Rota: ${lista[index].rota}\n"
//                           "Motorista: ${lista[index].motorista}\n"
//                           "Status: ${lista[index].status}",
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     searchController.dispose();
//     super.dispose();
//   }
// }

//dezafiu extra
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MikroletApp()));
}

class Mikrolet {
  int numeru;
  String rota;
  String motorista;
  int status;

  Mikrolet({
    required this.numeru,
    required this.rota,
    required this.motorista,
    required this.status,
  });

  factory Mikrolet.fromJson(Map<String, dynamic> json) {
    return Mikrolet(
      numeru: json["id"],
      rota: json["title"],
      motorista: json["body"],
      status: json["userId"],
    );
  }
}

Future<List<Mikrolet>> bukaMikrolet() async {
  final response = await http.get(
    Uri.parse("https://jsonplaceholder.typicode.com/posts"),
  );

  if (response.statusCode == 200) {
    List<dynamic> jsonData = jsonDecode(response.body);

    List<Mikrolet> mikrolet = jsonData
        .map((item) => Mikrolet.fromJson(item))
        .toList();

    return mikrolet;
  } else {
    throw Exception("Falha atu buka dadus");
  }
}

class MikroletApp extends StatefulWidget {
  const MikroletApp({super.key});

  @override
  State<MikroletApp> createState() => _MikroletAppState();
}

class _MikroletAppState extends State<MikroletApp> {
  late Future<List<Mikrolet>> futureMikrolet;

  TextEditingController searchController = TextEditingController();

  List<Mikrolet> resultadu = [];

  @override
  void initState() {
    super.initState();

    futureMikrolet = bukaMikrolet();
  }

  void bukaSearch(String keyword, List<Mikrolet> mikrolet) {
    setState(() {
      resultadu = mikrolet.where((item) {
        return item.rota.toLowerCase().toString().contains(
              keyword.toLowerCase(),
            ) ||
            item.motorista.toLowerCase().toString().contains(
              keyword.toLowerCase(),
            );
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Buka Mikrolet")),

      body: FutureBuilder<List<Mikrolet>>(
        future: futureMikrolet,

        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          }

          List<Mikrolet> mikrolet = snapshot.data ?? [];

          // Se user seidauk buka search,
          // hatudu dadus hotu.
          List<Mikrolet> lista = searchController.text.isEmpty
              ? mikrolet
              : resultadu;

          return Column(
            children: [
              Padding(
                padding: EdgeInsets.all(16),

                child: TextField(
                  controller: searchController,

                  decoration: InputDecoration(
                    labelText: "Buka rota",
                    hintText: "Ez: Comoro",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                  ),

                  onChanged: (value) {
                    bukaSearch(value, mikrolet);
                  },
                ),
              ),

              Expanded(
                child: ListView.builder(
                  itemCount: lista.length,

                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        leading: Icon(Icons.directions_bus),

                        title: Text("Mikrolet ${lista[index].numeru}"),

                        subtitle: Text(
                          "Rota: ${lista[index].rota}\n"
                          "Motorista: ${lista[index].motorista}\n"
                          "Status: ${lista[index].status}",
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
}
