import 'package:flutter/material.dart';

void main() {
  runApp(const MyButtonApp());
}

class MyButtonApp extends StatelessWidget {
  const MyButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: ElevatedButton (
            onPressed:(){
            
          },
          child: const Text('Sou um botão'),
          style: ElevatedButton.styleFrom(
            backgroundColor:Color(0xFF145A32) 
          )
          ),


        ),
      ),
    );
  }
}