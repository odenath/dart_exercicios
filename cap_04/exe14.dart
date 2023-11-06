//Faça um programa que receba o salário de um funcionário e, usando
//a tabela a seguir, mostre e calcule o novo salário.
// 300 50%
// 300-500 40%
// 500-700 30%
// 700-800 20%
// 800 1000 10%
// 1000 5%
import 'dart:io';

class Funcionario {
  late double salario;
  late double novoSalario;
  void calcularSalario(double salario) {
    if (salario <= 300) {
      this.novoSalario = salario * 1.5;
    } else if (salario > 300 && salario <= 500) {
      this.novoSalario = salario * 1.4;
    } else if (salario > 500 && salario <= 700) {
      this.novoSalario = salario * 1.3;
    } else if (salario > 700 && salario <= 800) {
      this.novoSalario = salario * 1.2;
    } else if (salario > 800 && salario <= 1000) {
      this.novoSalario = salario * 1.1;
    } else {
      this.novoSalario = salario * 1.05;
    }
  }

  Funcionario(double salario, double novoSalario) {
    this.salario = salario;
    this.novoSalario = novoSalario;
  }
}

void main() {
  Funcionario f1 = Funcionario(0, 0);
  print("Digite o salário do funcionário");
  f1.salario = double.parse(stdin.readLineSync()!);
  f1.calcularSalario(f1.salario);
  print("O novo salário é ${f1.novoSalario}");
}
