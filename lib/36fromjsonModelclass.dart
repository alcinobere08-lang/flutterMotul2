import 'dart:convert';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Mikroletcc()));
}

class Mikrolet {
  final int numeru;
  final String rota;
  final String motorista;
  final String status;

  Mikrolet({
    required this.numeru,
    required this.rota,
    required this.motorista,
    required this.status,
  });

  factory Mikrolet.fromJson(Map<String, dynamic> json) {
    return Mikrolet(
      numeru: json["numeru"],
      rota: json["rota"],
      motorista: json["motorista"],
      status: json["status"],
    );
  }
}

class Mikroletcc extends StatelessWidget {
  String data = '''
[
  {
    "numeru": 5,
    "rota": "becora",
    "motorista": "asis",
    "status": "ativu"
  },
  {
    "numeru": 10,
    "rota": "hera",
    "motorista": "asala",
    "status": "ativu"
  },
  {
    "numeru": 12,
    "rota": "dare",
    "motorista": "aje",
    "status": "ativu"
  }
]
''';

  @override
  Widget build(BuildContext context) {
    List<dynamic> json = jsonDecode(data);

    List<Mikrolet> mikrolet = json
        .map((item) => Mikrolet.fromJson(item))
        .toList();

    return Scaffold(
      appBar: AppBar(title: Text("JSON + Model Class")),
      body: ListView.builder(
        itemCount: mikrolet.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.bus_alert_sharp),
              title: Text("Mikrolet ${mikrolet[index].numeru}"),
              subtitle: Text(
                "Rota: ${mikrolet[index].rota}\n"
                "Motorista: ${mikrolet[index].motorista}\n"
                "Status: ${mikrolet[index].status}",
              ),
            ),
          );
        },
      ),
    );
  }
}
