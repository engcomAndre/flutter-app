import 'package:flutter/material.dart';

void main() {
  const style = TextStyle(fontSize: 50, color: Colors.white);

  runApp(const MaterialApp(
    home: Center(
      child: Text('ola mundo', style: style),
    ),
  ));
}
