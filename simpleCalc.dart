import 'dart:io';

class Calc {
  double n1 = 0.0;
  double n2 = 0.0;

  //construtor
  Calc(double num1, double num2) {
    this.n1 = num1;
    this.n2 = num2;
  }

  //métodos
  double Soma(double num1, double num2) {
    return num1 + num2;
  }

  double Subtrair(double num1, double num2) {
    return num1 - num2;
  }

  double Multi(double num1, double num2) {
    return num1 * num2;
  }

  double Dividir(double num1, double num2) {
    if (num2 == 0) {
      throw Exception("impossível dividir por zero");
    }
    return num1 / num2;
  }

  static void Operador() {
    stdout.writeln("Insira o primeiro número");
    String? input1 = stdin.readLineSync();
    input1 = input1?.trim();
    double num1 = 0.0;

    num1 = double.parse(input1!);

    print("Insira o segundo número");
    String? input2 = stdin.readLineSync();
    input2 = input2?.trim();
    double num2 = 0.0;

    num2 = double.parse(input2!);

    Calc calcular = new Calc(num1, num2);

    print("""
          Insira a operação\n
          Soma: +\n
          Subtração: -\n
          Multiplicação: *
          \nDivisão: /\n""");
    String? op = stdin.readLineSync();

    switch (op) {
      case "+":
        print("${calcular.n1} + ${calcular.n2} = ${calcular.Soma(num1, num2)}");
        break;
      case '-':
        print(
            "${calcular.n1} - ${calcular.n2} = ${calcular.Subtrair(num1, num2)}");
        break;
      case '*':
        print(
            "${calcular.n1} x ${calcular.n2} = ${calcular.Multi(num1, num2)}");
        break;
      case '/':
        print(
            "${calcular.n1} / ${calcular.n2} = ${calcular.Dividir(num1, num2)}");
        break;
      default:
        print("valor inválido");
        exit(0);
    }
  }
}
