//A busca por subcadeias dentro de grandes cadeias de caracteres é um problema clássico na computação, especificamente em banco de dados.
//Faça um programa que receba uma cadeia de caracteres e uma subcadeia, determine e mostre quantas vezes a subcadeia aparece dentro da
//cadeia
//Exemplos
//cadeia xxyykkxx
//subcadeia xx
//resposta : a subcadeia xx aparece 2 vezes

import 'dart:core';

void main() {
  String texto = "Olá, mundo. Olá, Dart. Olá, Olá!";
  String palavra = "Olá";

  RegExp exp = RegExp(palavra);
  Iterable<Match> matches = exp.allMatches(texto);

  int count = 0;

  for (Match match in matches) {
    count++;
    print(match);
  }

  print("A palavra '$palavra' ocorreu $count vezes no texto.");
}
