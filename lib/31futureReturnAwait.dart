// void main() async {
//   String resultado = await teste();

//   print(resultado);
// }

// Future<String> teste() async {
//   await Future.delayed(Duration(seconds: 2));

//   return "Ola Alcino";
// }

import 'package:flutter/material.dart';
// import 'package:mapa_mikrolet/26formvalidation.dart';

void main() {
  runApp(MaterialApp(home: MikroletApp()));
}

class MikroletApp extends StatefulWidget {
  @override
  State<MikroletApp> createState() => _MikroletAppState();
}

class _MikroletAppState extends State<MikroletApp> {
  String rota = "seidauk buka";

  Future<String> bukaROta() async {
    await Future.delayed(Duration(seconds: 2));
    return "Mikrolet 10 - COmoro";
  }

  Future<void> prosesuRota() async {
    setState(() {
      rota = "buka rota";
    });
    String resultadu = await bukaROta();
    setState(() {
      rota = resultadu;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Buka rota")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(rota, style: TextStyle(fontSize: 22)),
            SizedBox(height: 20),

            ElevatedButton(onPressed: prosesuRota, child: Text("buka")),
          ],
        ),
      ),
    );
  }
}
