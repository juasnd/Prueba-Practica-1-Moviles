import 'package:flutter/material.dart';
import 'pantallas/bienvenida_pantalla.dart';

void main() {
  runApp(const MyApp());
}
  class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Ejercicios de Numeros',
  home: const BienvenidaPantalla(),
  );
  }
  }



