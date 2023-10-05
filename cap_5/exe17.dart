//Foi feita uma pesquisa sobre a audiencia de canal de TV em várias casas de uma cidade,em determinado dia.
//Para cada casa consultada foi fornecido o número do canal(4,5,7,12) e o número de pessoas que estavam assistindo àquele canal.
// Se a televisão estivesse desligada, nada era anotado, ou seja, essa casa n entrava na pesquisa. Faça um programa que?:
// Leia um número indeterminado de dados(núm do canal e núm de pessoas que estavam assistindo)
// calcule a porcentagem de cada canal
// Para encerrar a entrada de dados, digite o número do canal ZERO

import 'dart:io';

void main() {
  int numeroCanal;
  int contador = 0;
  int contador4 = 0;
  int contador5 = 0;
  int contador7 = 0;
  int contador12 = 0;
  do {
    numeroCanal = int.parse(stdin.readLineSync() ?? '0');
    if (numeroCanal == 4) {
      contador4++;
    }
    if (numeroCanal == 5) {
      contador5++;
    }
    if (numeroCanal == 7) {
      contador7++;
    }
    if (numeroCanal == 12) {
      contador12++;
    }
    contador++;
  } while (numeroCanal != 0);
  print("O número total de pessoas que assistiram é de $contador");
  print("A porcentagem de cada canal é: canal 4 ${(contador4 / contador) * 100} %");
  print("A porcentagem de cada canal é: canal 5 ${(contador5 / contador) * 100} %");
  print("A porcentagem de cada canal é: canal 7 ${(contador7 / contador) * 100} %");
  print("A porcentagem de cada canal é: canal 12 ${(contador12 / contador) * 100} %");
}
