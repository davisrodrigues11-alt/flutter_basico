import 'package:app_flutter/login.dart';
import 'package:app_flutter/trabalho.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Principal(),
  ));
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Principal'),
      ),

      // Menu lateral
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text('MENU'),
            ),

            // Opção Principal
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Principal'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

                        // Opção Principal
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Trabalho'),
              onTap: () {
                Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => Trabalho(),
                )
              );
              },
            ),

            // Opção Logout
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => login(),
                )
              );
              },
            ),
          ],
        ),
      ),

      // Conteúdo da tela
      body: const Center(
        child: Text(
          'Tela Principal',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}