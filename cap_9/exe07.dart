//Faça um programa que receba uma frase e mostre quantas letras diferentes ela contém.


import 'dart:io';

int contarLetras(String frase) {
  Set<String> letrasDiferentes = {};
  for (int i = 0; i < frase.length; i++) {
    letrasDiferentes.add(frase[i]);
  }
  return letrasDiferentes.length;
}
// int contarLetras(String frase) {
//   return Set.from(frase).length;
// }

void main() {
  String frase = stdin.readLineSync()!;
  int quantidade = contarLetras(frase);
  print("A frase contém ${quantidade} letras diferentes.");
}
