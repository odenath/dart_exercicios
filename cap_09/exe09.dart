// Faça um programa que receba uma frase e um caractere e verifique em que posição da frase o caractere digitado aparece pela 1ª vez.
import 'dart:io';

posicao(String frase, String caractere) {
  List<dynamic> listinha = frase.split('');
  for(int i = 0; i < listinha.length; i++) {
    if(listinha[i] == caractere) {
      print("O caractere $caractere aparece na posição ${i + 1}");
      break;
    }
  }
}

void main() {
  print("Escreva uma frase animada e de bom humor");
  String frase = stdin.readLineSync()!;
  print("Digite o caractere e eu te direi em qual local ele aparece 1º");
  String caractere = stdin.readLineSync()!;
  posicao(frase, caractere);
}
