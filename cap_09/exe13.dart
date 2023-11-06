//Faça um programa que receba uma cadeia de caracteres e o número de repetições(limitado a 5) e gere uma nova cadeia.
//Exemplo:
//Cadeia = Ui!
//Número = 3
//Nova cadeia = Ui! Ui! Ui!

import 'dart:io';

void repeteco(String cadeia, int numero) {
  int num;
  if (numero > 5) {
    num = 5;
  } else {
    num = numero;
  }
  String preso = '';
  for (int i = 0; i < num; i++) {
    preso += cadeia+' ';
  }
  print(preso);
}

void main() {
  print("Digite a cadeia de caracteres:");
  String cadeia = stdin.readLineSync()!;
  print("Digite a quntidade de repetições, limitado a 5, qualquer número");
  int numero = int.parse(stdin.readLineSync() ?? "0");
  repeteco(cadeia, numero);
}
