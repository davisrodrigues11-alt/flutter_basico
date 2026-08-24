import 'package:flutter/material.dart';

// Início do programa
void main() {
  runApp(MaterialApp(
    home: Trabalho(), // Primeira tela
  ));
}

// Tela Home
class Trabalho extends StatelessWidget {
  const Trabalho({super.key});

  @override
  Widget build(BuildContext context) {

    // Estrutura da tela
    return Scaffold(

      // Barra superior
      appBar: AppBar(
        title: Text('Menu Inferior'),
      ),

      // Conteúdo da tela
      body: Center(
        child: Text(
          'Minha tela',
          style: TextStyle(fontSize: 24),
        ),
      ),

      // Menu inferior
      bottomNavigationBar: BottomNavigationBar(
        items: [

          // Botão Home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),


          // Botão Principal
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Principal',
          ),

          // Botão Logout
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Logout',
          ),
        ],
      ),
    );
  }
}