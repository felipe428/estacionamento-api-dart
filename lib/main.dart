import 'package:estacionamento_api/screens/Sobre.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Estaci.one',
      theme: ThemeData(
        primaryColor: Colors.purple[700],
        scaffoldBackgroundColor: Color(0xFFF8F8FF),
      ),
      home: Sobre(),
    );
  }
}
