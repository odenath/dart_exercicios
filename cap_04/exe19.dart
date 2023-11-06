//Faça um programa que receba a altura e o sexo de uma pessoa e calcule e //mostre seu peso ideal, utilizando as seguintes fórmulas(onde h é altura)
//homens (72.7 * h) - 58 ;
//mulheres(62.1 * h) - 44.7 ;

import 'dart:io';

void main() {
  print("Digite a altura ex: 1.80");
  double altura = double.parse(stdin.readLineSync() ?? '0');
  print("Digite o sexo M ou F");
  String sexo = stdin.readLineSync() ?? '';

  if (sexo == 'M') {
    print("Peso ideal ${(altura * 72.7) - 58}");
  } else {
    print("Peso ideal feminino :${(62.1 * altura) - 44.7}");
  }
}
