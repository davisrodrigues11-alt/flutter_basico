import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: home(),
    ),
  );
}

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seja Bem-vindo!'),
        backgroundColor: Color(0xFF78281F),
      ),
      body: Center(
        child: Text('Bem-vindo à Tela Inicial!'),
      ),
    );
  }
}