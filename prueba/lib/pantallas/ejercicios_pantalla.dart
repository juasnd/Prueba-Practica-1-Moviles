
import 'package:flutter/material.dart';
import '../logica/numeros_logica.dart';

class EjerciciosPantalla extends StatefulWidget {
  EjerciciosPantalla({super.key});

  @override
  State<EjerciciosPantalla> createState() =>
      _EjerciciosPantallaState();
}

class _EjerciciosPantallaState
    extends State<EjerciciosPantalla> {

  final numeroController = TextEditingController();

  NumerosLogica numeros = NumerosLogica();

  // Resultados
  String resultadoPrimo = '';
  String resultadoFactorial = '';
  String resultadoCapicua = '';
  String mensaje = '';

  // Calcular
  void calcular() {

    int? numero = int.tryParse(numeroController.text);

    if (numero == null) {
      setState(() {
        mensaje = 'Ingrese un numero entero';
        resultadoPrimo = '';
        resultadoFactorial = '';
        resultadoCapicua = '';
      });
      return;
    }

    setState(() {

      mensaje = '';

      // Numero primo
      if (numeros.esPrimo(numero)) {
        resultadoPrimo = '$numero es primo';
      } else {
        resultadoPrimo = '$numero no es primo';
      }

      // Factorial
      resultadoFactorial =
          numeros.calcularFactorial(numero);

      // Numero capicua
      if (numeros.esCapicua(numero)) {
        resultadoCapicua = '$numero es capicua';
      } else {
        resultadoCapicua = '$numero no es capicua';
      }

    });
  }

  // Limpiar los datos
  void limpiar() {
    setState(() {
      numeroController.clear();
      resultadoPrimo = '';
      resultadoFactorial = '';
      resultadoCapicua = '';
      mensaje = '';
    });
  }

  @override
  void dispose() {
    numeroController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Ejercicios'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Text(
              'Ingrese un numero entero',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 15),

            // Campo de texto
            TextField(
              controller: numeroController,
              keyboardType: TextInputType.numberWithOptions(
                signed: true,
              ),
              decoration: InputDecoration(
                labelText: 'Numero',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            // Boton calcular
            ElevatedButton(
              onPressed: calcular,
              child: Text('Calcular'),
            ),

            SizedBox(height: 10),

            // Boton limpiar
            ElevatedButton(
              onPressed: limpiar,
              child: Text('Limpiar'),
            ),

            SizedBox(height: 20),

            // Mensaje de validacion
            Text(
              mensaje,
              style: TextStyle(
                color: Colors.red,
                fontSize: 16,
              ),
            ),

            SizedBox(height: 10),

            // Resultado primo
            Text(
              'NUMERO PRIMO',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            Text(
              resultadoPrimo,
              style: TextStyle(fontSize: 16),
            ),

            Divider(height: 35),

            // Resultado factorial
            Text(
              'FACTORIAL',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            Text(
              resultadoFactorial,
              style: TextStyle(fontSize: 16),
            ),

            Divider(height: 35),

            // Resultado capicua
            Text(
              'NUMERO CAPICUA',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            Text(
              resultadoCapicua,
              style: TextStyle(fontSize: 16),
            ),

            SizedBox(height: 30),

            // Regresar usando el nombre de la ruta
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(
                  context,
                  ModalRoute.withName('/bienvenida'),
                );
              },
              child: Text('Volver'),
            ),

          ],
        ),
      ),
    );
  }
}
