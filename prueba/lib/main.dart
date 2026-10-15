
import 'package:flutter/material.dart';
import 'pantallas/bienvenida_pantalla.dart';
import 'pantallas/ejercicios_pantalla.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejercicios de Numeros',

      initialRoute: '/bienvenida',

      routes: {
        '/bienvenida': (context) => BienvenidaPantalla(),
        '/ejercicios': (context) => EjerciciosPantalla(),
      },
    );
  }
}
