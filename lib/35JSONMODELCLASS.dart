import 'package:flutter/material.dart';
// import 'package:mapa_mikrolet/15listviewbuilder.dart';

void main() {
  runApp(MaterialApp(home: Mikroletdd()));
}

class Mikrolet {
  int numeru;
  String rota;
  String motorista;
  String status;
  String destinasaun;

  Mikrolet({
    required this.numeru,
    required this.rota,
    required this.motorista,
    required this.status,
    required this.destinasaun,
  });
}

class Mikroletdd extends StatelessWidget {
  List<Mikrolet> mikrolet = [
    Mikrolet(
      numeru: 5,
      rota: "bekora",
      motorista: "amanu",
      status: "ativu",
      destinasaun: "comoro",
    ),
    Mikrolet(
      numeru: 10,
      rota: "bebonuk",
      motorista: "ajai",
      status: "ativo",
      destinasaun: "tasi tolu",
    ),
    Mikrolet(
      numeru: 12,
      rota: "vila verde",
      motorista: "ajaun",
      status: "ativu",
      destinasaun: "hahae",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("json hahahaha")),
      body: Center(
        child: ListView.builder(
          itemCount: mikrolet.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Icon(Icons.bus_alert_rounded),
                title: Text("Mikrolet ${mikrolet[index].numeru}"),
                subtitle: Text(
                  "Rota: ${mikrolet[index].rota}\n"
                  "Motorista: ${mikrolet[index].motorista}\n"
                  "Status: ${mikrolet[index].status}\n"
                  "Destinasaun: ${mikrolet[index].destinasaun}",
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
