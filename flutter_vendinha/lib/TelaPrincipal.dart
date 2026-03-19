import 'package:flutter/material.dart';

class TelaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Handbags")),
      body: Center(child: ConteudoTela()),
    );
  }
}

class ConteudoTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 500, child: Image.asset("assets/bolsa.png")),
          Container(child: Information()),
        ],
      ),
    );
  }
}

class Information extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text("Nome"),
          Text("Preço"),
          Icon(Icons.shop)
        ]
      ),
    );
  }
}
