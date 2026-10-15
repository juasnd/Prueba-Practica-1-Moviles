
import 'package:flutter/material.dart';
import 'ejercicios_pantalla.dart';

class BienvenidaPantalla extends StatelessWidget {
  const BienvenidaPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buenos dias'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const Text(
                'APLICACION PARA NUMEROS PRIMOS, FACTORIAL Y CAPICUA',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                'Bienvenido a la prueba practica de moviles.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),

              const SizedBox(height: 10),

              const Text(
                'Juan Gutierrez',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 30),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const EjerciciosPantalla(),
                    ),
                  );
                },
                child: const Text('EJERCICIOS'),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
