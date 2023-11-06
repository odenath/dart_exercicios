//Faça um programa que receba o salário atual de um funcionário e, usando a tabela a seguir.
//Calcule e mostre o valor do aumento e o novo salário
// até 300	15%
// de 300-600   10%
// de 600-900   05%
// acima 900    00%
//adicionado ao ex um while que faz um loop para o funcionário digitar quantas
//vezes ele quiser o salário e finaliza se ele digitar -1

import 'dart:io';

void main() {
  bool continuar = true;
  while (continuar == true) {
    print("Digite o valor do seu salário");
    double salary = double.parse(stdin.readLineSync() ?? '0');
    if (salary <= 300 && salary > 0) {
      salary *= 1.15; // 15% de reajuste
      print("O valor total é de ${salary.toStringAsFixed(2)}  reais");
    } else if (salary > 300 && salary < 600) {
      salary *= 1.10; // 10% de reajuste
      print("O valor total é de ${salary.toStringAsFixed(2)}  reais");
    } else if (salary >= 600 && salary < 900) {
      salary *= 1.05; // 05% de reajuste
      print("O valor total é de ${salary.toStringAsFixed(2)}  reais");
    } else if (salary >= 900) {
      print("O valor total é de ${salary.toStringAsFixed(2)}  reais");
    } else if (salary < 0) {
      print("O programa será encerrado, salário negativo");
      continuar = false;
    }
  }
}
