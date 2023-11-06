//Faça um programa que receba uma frase, calcule e mostre a qtd de palavras da frase digitada. Antes de contar a qtd de palavras da
//frase, esta deverá passar pela seguintes correções:
//eliminação de espaço no início da frase
//eliminação de espaço no fim da frase
//eliminação dos espaçoes duplicados entre as palavras.

import 'dart:io';

// String fraseSemEspaco(String frase) {
//   String frasefinal = frase.trim();
//   if (frasefinal.contains('  ')) {
//     frasefinal = frasefinal.replaceAll('  ', ' ');
//   }
//   return frasefinal;
// }

String fraseSemEspaco(String frase) {
  String frasefinal = frase.trim();
  while (frasefinal.contains('  ')) {
    frasefinal = frasefinal.replaceAll('  ', ' ');
  }
  return frasefinal;
}

void main() {
  print("Digite a sua frase com espaços");
  String frase = stdin.readLineSync()!;
  print(fraseSemEspaco(frase));

}
