import 'package:app_flutter/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: inicial(),
    ),
  );
}

// Criando a tela de login
class inicial extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      // backgroundColor: Color(0xFF002060),

      // título do APP
      appBar: AppBar(
        title: Text(
          'Tela de Login',
          style: TextStyle(color: Colors.green),
        ),
        backgroundColor: Color(0xFF32145A),
      ),

      // Conteúdo da página
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            // Título da tela do APP
            Text('Acesso ao sistema',
            style: TextStyle(fontSize: 24),
            ),

            SizedBox(height: 24,),


            // Botão Entrar
            ElevatedButton(onPressed: (){
              print('Botão pressionado');
              // Função para navegar para tela Home 
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => login(),
                )
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF27AE60),
              foregroundColor: Colors.deepPurple,
            ),
            child: Text('Entrar'),
            ),

          ],
        ),
      ),
    );
  }
}
