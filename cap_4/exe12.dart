//Faça um programa que receba o salário bruto de um funcionário e, usando a tabela a segui:
//calcule e mostre o valor a receber.Sabe-se que este é o valor composto pelo salário do
//funcionário acrescido de gratificação e descontado o imposto de 7% sobre o salário sem //gratificação
//salário 350 gratificação 100
//salário de 350 a 600 gratificação 75
//salário de 600 a 900 gratificação 50
//salário acima de 900 gratificação 35
//salario += (salario *-0.7) 100;

import 'dart:io';

void main() {
  double salario = double.parse(stdin.readLineSync() ?? '0');
  if (salario < 350) {
    salario += (salario * -0.07) + 100;
    print("Seu salário é de $salario");
  } else if (salario >= 350 && salario < 600) {
    salario += (salario * -0.07) + 75;
    print("Seu salário é de $salario");
  } else if (salario >= 600 && salario < 900) {
    salario += (salario * -0.07) + 50;
    print("Seu salário é de $salario");
  } else if (salario >= 900) {
    salario += (salario * -0.07) + 35;
    print("Seu salário é de $salario");
  }
}
