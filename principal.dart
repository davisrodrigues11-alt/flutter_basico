import 'package:flutter/material.dart';
import 'package:login/main.dart';

void main() {
  runApp(
    MaterialApp(
      home: Principal(),
    ),
  );
}


class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bem vindo a página principal !'),
        backgroundColor: Color.fromARGB(255, 6, 33, 237),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text ('página principal',
            style: TextStyle(
              fontSize: 32
              ),
            ),
            SizedBox(height: 24,),

                        // Botão Voltar
            ElevatedButton(onPressed: (){
                print('Botão pressionado');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => login()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFF2800),
                foregroundColor: Colors.white,
              ),
              child: Text('Entrar'),
              ),


          ],
        ),
      ),
    );
  }
}