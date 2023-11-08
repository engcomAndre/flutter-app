import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(
    nome: "Pedro",
  ));
}

// class MyApp extends StatelessWidget {
//   final String title;
//   final int valor;
//
//   const MyApp({Key? key, this.title='', this.valor=0}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(
//             "$title valor = $valor",
//             textDirection: TextDirection.ltr,
//           ),
//         ),
//         body: const Center(
//           child: Text(
//             'ola mundo',
//             style: TextStyle(fontSize: 50, color: Colors.black),
//           ),
//         ),
//       ),
//     );
//   }
// }

class MyApp extends StatefulWidget {
  final String nome;

  const MyApp({Key? key, this.nome = ''}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int salario = 8000;

  void aumentarSalario(int valor) {
    setState(
      () {
        salario = salario + valor;
      },
    );
  }

  void diminuiSalario(int valor) {
    setState(
          () {
        salario = salario - valor;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        aumentarSalario(100);
      },
      onDoubleTap: () {
        diminuiSalario(100);
      },
      child: Center(
        child: Text("Salario ${widget.nome} é $salario",
            textDirection: TextDirection.ltr),
      ),
    );
  }
}
