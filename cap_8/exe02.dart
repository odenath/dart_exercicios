//Crie uma sub rotina que receba 3 númneros inteiros como parâmetros, representando horas, minutos e segundos, e os converta em segundos
//Ex 2h, 40min e 10 segundos correspondem a 9.610 segundos

import 'dart:io';
int conversorSegundo(int s, int m, int h) {
  int soma = s;
  soma += (m * 60);
  soma += (h * 60 * 60);
  return soma;
}

void main() {
  print("Digite os segundos");
  int s = int.parse(stdin.readLineSync() ?? '0');
  print("Digite os minutos");
  int m = int.parse(stdin.readLineSync() ?? '0');
  print("Digite as horas");
  int h = int.parse(stdin.readLineSync() ?? '0');
  print(conversorSegundo(s, m, h));
}
