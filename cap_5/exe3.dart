//Faça um programa que receba a idade de 15 pessoas, calcule e mostre:

//a quantidade de pessoas em cada faixa etária;
//a percentagem d pessoas na primeira e na última faixa etaria, com relação ao
//total de pessoas
// 1ª 15
// 2ª 16-30
// 3ª 31-45
// 4ª 46-60
// 5ª <60

import 'dart:io';

void main() {
  List<int> idades = [];

  for (int i = 0; i < 15; i++) {
    print("Digite a idade da ${i + 1}ª pessoa: ");
    idades.add(int.parse(stdin.readLineSync()!));
    if (idades[i] < 16) {
      print("A pessoa ${i + 1}ª pessoa está na 1ª faixa etária");
    }
    if (idades[i] >= 16 && idades[i] <= 30) {
      print("A pessoa ${i + 1}ª pessoa está na 2ª faixa etária");
    }
    if (idades[i] >= 31 && idades[i] <= 45) {
      print("A pessoa ${i + 1}ª pessoa está na 3ª faixa etária");
    }
    if (idades[i] >= 46 && idades[i] <= 60) {
      print("A pessoa ${i + 1}ª pessoa está na 4ª faixa etária");
    }
    if (idades[i] > 60) {
      print("A pessoa ${i + 1}ª pessoa está na 5ª faixa etária");
    }
  }
}
