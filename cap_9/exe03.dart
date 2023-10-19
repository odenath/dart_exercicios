//Faça um programa que receba uma frase e gere uma nova, retirantdo os espaços excedentes no início e no fim da frase e entre suas palavras

import 'dart:io';

String semEspacinhoAqui(String frase) {
  String frasefinal = frase.replaceAll(" ", "");
  print(frasefinal);
  return frasefinal;
}

void main() {
  print("Digite a sua frase com espaços");
  String frase = stdin.readLineSync()!;
  semEspacinhoAqui(frase);
}
