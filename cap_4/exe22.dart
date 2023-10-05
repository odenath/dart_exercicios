//Faça um programa que receba a idade e o peso de uma pessoa. De acordo com a
//tabela a seguir, verifique e mostre em qual dos grupos de risco esta pessoa
//se encaixa
// Menores de 20 até 60kg [9] 60-90 [8] <90 [7]
// de 20 a 50    até 60kg [6] 60-90 [5] <90 [4]
// maior 50      até 60kg [3] 60-90 [2] <90 [1]

import 'dart:io';

void main() {
  int idade;
  int peso;

  print("Digite sua idade em anos");
  idade = int.parse(stdin.readLineSync() ?? '0');
  print("Digite seu peso em KG ");
  peso = int.parse(stdin.readLineSync() ?? '0');
  if (idade < 20 && peso <= 60) {
    print("Seu numero é 9");
  } else if (idade < 20 && (peso > 60 && peso < 90)) {
    print("Seu numero é 8");
  } else if (idade < 20 && peso <= 90) {
    print("Seu numero é 7");
  }
  if ((idade >= 20 && idade <= 50) && peso <= 60) {
    print("Seu numero é 6");
  } else if ((idade >= 20 && idade <= 50) && (peso > 60 && peso <= 90)) {
    print("Seu numero é 5");
  }else if ((idade >= 20 && idade <= 50) && (peso >  90)) {
    print("Seu numero é 4");
  }else if (idade > 50 && peso <= 60) {
    print("Seu numero é 3");
  }else if (idade > 50 && (peso > 60 && peso <= 90)) {
    print("Seu numero é 2");
  }else if (idade > 50 && peso > 90) {
    print("Seu numero é 1");
  }
  

}
