
import 'package:flutter/material.dart';

class BienvenidaPantalla extends StatelessWidget {
  BienvenidaPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buenos dias'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(
                'APLICACION PARA NUMEROS PRIMOS, FACTORIAL Y CAPICUA',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 20),

              Text(
                'Bienvenido a la prueba practica de moviles.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),

              SizedBox(height: 10),

              Text(
                'Juan Gutierrez',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),

              SizedBox(height: 30),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/ejercicios');
                },
                child: Text('EJERCICIOS'),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
