import 'package:flutter/material.dart';

class TelaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Home"),
      ),
      body: Center(child: ConteudoTela()),
    );
  }
}

class ConteudoTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Column(
      children: [
        
      ],
    ));
  }
}
