//Cada espectador de um cinema respondeu a um questionário no qual constava sua idade e sua opinião
//em relação ao filme ótimo-3 bom-2 regular-1. Faça um programa que receba a idade e a opinião de 15 pessoas, calcule e mostre:
//a média das idades das pessoas que responderam ótimo
//a quantidade de pessoas que responderam regular
//a percentagem de pessoas que responderam bom, entre todos os espectadpres analisados

import 'dart:io';

void main() {
  int idade;
  int opiniao;
  int contadorOtimo = 0;
  int idadeOtimo = 0;
  int contadorRegular = 0;
  int contadorBom = 0;

  for (int i = 0; i < 2; i++) {
    print("Digite a sua idade");
    idade = int.parse(stdin.readLineSync() ?? '0');
    print("Digite a sua opinião: 1-regular, 2-bom, 3-ótimo");
    opiniao = int.parse(stdin.readLineSync() ?? '0');
    if (opiniao == 3) {
      contadorOtimo++;
      idadeOtimo += idade;
    }
    if (opiniao == 1) {
      contadorRegular++;
    }
    if (opiniao == 2) {
      contadorBom++;
    }
  }
  print(
      "A médias da idade pessoas que responderam ${(idadeOtimo / contadorOtimo)}");
  print("A quantidade de pessoas que respondeu regular foi: $contadorRegular");
  print("A percentagem de pessoas que respondeu bom${(contadorBom / 2) * 100}");
}
