// Em uma eleição presidencial existem quatro candidatos. Os votos são informados por //meio de código. Os códigos utilizados são:
// 1,2,3,4 para respectyivos candidatos
// 5 voto nulo
// 6 voto em branco
//Faça um programa que calcule e mostre:
//O total de votos para cada candidato ok
//o total de votos nulos ok
//o total de votos em branco ok
//a percentagem de votos nulos sobre o total de votos ok
//a percentagem de votos em branco sobre o total de votos. ok
//Para finalizar o conjunto de votos, tem-se o valor zero e, para códigos inválidos, o //programa deverá mostrar uma mensagem

import 'dart:io';

void main() {
  int voto;
  int contador = 0;
  int contador1 = 0;
  int contador2 = 0;
  int contador3 = 0;
  int contador4 = 0;
  int contador5 = 0;
  int contador6 = 0;
  bool continua = false;

  while (continua == false) {
    print("Digite o voto");
    voto = int.parse(stdin.readLineSync() ?? '0');
    if (voto == 0) {
      continua = true;
      break;
    }
    switch (voto) {
      case 1:
        contador1++;
        contador++;
      case 2:
        contador2++;
        contador++;
      case 3:
        contador3++;
        contador++;
      case 4:
        contador4++;
        contador++;
      case 5:
        contador5++;
        contador++;
      case 6:
        contador6++;
        contador++;
      default:
        print("Código inválido");
    }
    
  }
  print("O total de votos para o candidato 1 é $contador1");
  print("O total de votos para o candidato 2 é $contador2");
  print("O total de votos para o candidato 3 é $contador3");
  print("O total de votos para o candidato 4 é $contador4");
  print("O total de votos nulos é $contador5");
  print("O total de votos em branco é $contador6");
  print(
      "A percentagem de votos nulos sobre o total de votos é ${contador5 / contador * 100}%");
  print(
      "A percentagem de votos em branco sobre o total de votos é ${contador6 / contador * 100}%");
}
