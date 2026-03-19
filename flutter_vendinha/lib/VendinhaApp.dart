import 'package:flutter/material.dart';
import 'package:flutter_vendinha/TelaPrincipal.dart';

class VendinhaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TelaPrincipal(),
      debugShowCheckedModeBanner: false,
    );
  }
}
