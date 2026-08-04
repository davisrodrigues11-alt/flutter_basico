import 'package:flutter/material.dart';

void main() {
  runApp(const MeuAplicativo());
}

class MeuAplicativo extends StatelessWidget {
  const MeuAplicativo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meu App Flutter',
      theme: ThemeData(
        // Cor principal do aplicativo
        primaryColor: const Color(0xFF087D66),
      ),
      home: const TelaInicial(),
    );
  }
}

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Cor de fundo principal (#66087D)
      backgroundColor: const Color(0xFF66087D),
      appBar: AppBar(
        // Cor da AppBar (#087D66)
        backgroundColor: const Color(0xFF087D66),
        centerTitle: true,
        title: const Text(
          'Informações Pessoais',
          style: TextStyle(
            // Cor do texto da AppBar (#F1C40F)
            color: Color(0xFFF1C40F),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(24.0),
          margin: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            // Cor do Card central (#7D6608)
            color: const Color(0xFF7D6608),
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8.0,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              // 1. Seu Nome (Negrito)
              Text(
                'Davi Saraiva',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold, 
                  color: Color(0xFF145A32),
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Sesi - 400',
                style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic, 
                  color: Color(0xFF32145A), 
                ),
              ),
              SizedBox(height: 12),
              Text(
                'São Roque',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal, 
                  color: Color(0xFF5A3214),
                ),
              ),
              SizedBox(height: 8),

              
              Text(
                'Agosto de 2026',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal, 
                  color: Color(0xFF27AE60),
                ),
              ),


              Text(
                'Walter',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal, 
                  color: Color.fromARGB(255, 239, 0, 171),
                ),
              ),








            ],
          ),
        ),
      ),
    );
  }
}