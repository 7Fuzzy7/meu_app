import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Meu App Flutter")),
        body: Center(
          child: Text("Olá, Flutter no Windows!", style: TextStyle(fontSize: 24)),
        ),
      ),
    );
  }
}
