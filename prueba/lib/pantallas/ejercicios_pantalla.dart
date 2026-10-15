
import 'package:flutter/material.dart';
import '../logica/numeros_logica.dart';

class EjerciciosPantalla extends StatefulWidget {
  const EjerciciosPantalla({super.key});

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


  void calcular() {

    int? numero = int.tryParse(numeroController.text);

    if (numero == null) {
      setState(() {
        mensaje = 'Ingrese un numero entero ';
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
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Ejercicios'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            const Text(
              'Ingrese un numero entero',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            // Campo de texto
            TextField(
              controller: numeroController,
              keyboardType:
              const TextInputType.numberWithOptions(
                signed: true,
              ),
              decoration: const InputDecoration(
                labelText: 'Numero',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            // Boton calcular
            ElevatedButton(
              onPressed: calcular,
              child: const Text('Calcular'),
            ),

            const SizedBox(height: 10),

            // Boton limpiar
            ElevatedButton(
              onPressed: limpiar,
              child: const Text('Limpiar'),
            ),

            const SizedBox(height: 20),

            // Mensaje de validacion
            Text(
              mensaje,
              style: const TextStyle(
                color: Colors.red,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 10),

            // Resultado primo
            const Text(
              'NUMERO PRIMO',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              resultadoPrimo,
              style: const TextStyle(fontSize: 16),
            ),

            const Divider(height: 35),

            // Resultado factorial
            const Text(
              'FACTORIAL',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              resultadoFactorial,
              style: const TextStyle(fontSize: 16),
            ),

            const Divider(height: 35),

            // Resultado capicua
            const Text(
              'NUMERO CAPICUA',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              resultadoCapicua,
              style: const TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 30),

            // Regresar
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Volver'),
            ),

          ],
        ),
      ),
    );
  }
}
