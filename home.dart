
import 'package:atividade_api/cep.dart';
import 'package:atividade_api/cnpj.dart';
import 'package:atividade_api/gps.dart';
import 'package:atividade_api/main.dart';
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
            ListTile(
              leading: const Icon(Icons.search),
              title: const Text('CEP'),
              onTap: () {
                Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => Cep(),
                )
              );
              },
            ),
             ListTile(
              leading: const Icon(Icons.business),
              title: const Text('CNPJ'),
              onTap: () {
                Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => Cnpj(),
                )
              );
              },
            ),
             ListTile(
              leading: const Icon(Icons.gps_fixed),
              title: const Text('GPS'),
              onTap: () {
                Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => Localizacao(),
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
          'Sejam Bem Vindos !',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}