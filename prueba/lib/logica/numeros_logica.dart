
class NumerosLogica {

  //  es primo
  bool esPrimo(int numero) {

    if (numero <= 1) {
      return false;
    }

    for (int i = 2; i < numero; i++) {
      if (numero % i == 0) {
        return false;
      }
    }

    return true;
  }

  //  factorial
  String calcularFactorial(int numero) {

    if (numero < 0) {
      return 'No existe factorial de numeros negativos';
    }

    int factorial = 1;
    String procedimiento = '$numero! = ';

    if (numero == 0) {
      return '0! = 1';
    }

    for (int i = numero; i >= 1; i--) {

      factorial = factorial * i;
      procedimiento = procedimiento + '$i';

      if (i > 1) {
        procedimiento = procedimiento + ' x ';
      }
    }

    procedimiento = procedimiento + ' = $factorial';

    return procedimiento;
  }

  // numero capicua
  bool esCapicua(int numero) {

    String texto = numero.toString();
    String invertido = '';

    for (int i = texto.length - 1; i >= 0; i--) {
      invertido = invertido + texto[i];
    }

    if (texto == invertido) {
      return true;
    } else {
      return false;
    }
  }
}
