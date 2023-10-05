//Faça um programa para calcular o ajuste de salário
//Até 300 reais 35% acima deste valor 15%


import 'dart:io';

void main() {
  double salary = double.parse(stdin.readLineSync() ?? '0');

  if (salary <= 300) {
    salary *= 1.35;
    print("O salário é $salary");
  } else {
    salary *= 1.15;
    print("O salário é $salary");
  
  }
}
