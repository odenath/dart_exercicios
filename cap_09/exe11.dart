//Faça um programa que receba uma frase e mostre quantas vezes cada palavra aparece na frase digitada.

import 'dart:io';

void main() {
  print("Escreva uma frase animada e de bom humor");
  String frase = stdin.readLineSync()!;
  List<dynamic> listinha = frase.split(' ');
  Map<String, int> mapinha = {};
  for (int i = 0; i < listinha.length; i++) {
    if (mapinha.containsKey(listinha[i])) {
      mapinha[listinha[i]] = mapinha[listinha[i]]! + 1;
    } else {
      mapinha[listinha[i]] = 1;
    }
  }
  print(mapinha);
}