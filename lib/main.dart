import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(title: "Aplicativo Olá Mundo",));
}

class MyApp extends StatelessWidget {
  final String title;
  final int valor;

  const MyApp({Key? key, this.title='', this.valor=0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "$title valor = $valor",
            textDirection: TextDirection.ltr,
          ),
        ),
        body: const Center(
          child: Text(
            'ola mundo',
            style: TextStyle(fontSize: 50, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
