//Faça um programa que receba um verbo regular e terminado em ER e mostre a sua conjugação no presente
//Exemplo
//Verbo: vender
//eu vendo
//tu vendes
//ele vende
//ela vende
//nós vendemos
//vós vendeis
//eles vendem
//elas vendem

import 'dart:io';

dynamic verboso(String verbo) {
  if (verbo.endsWith("er")) {
    verbo = verbo.replaceAll("er", "");
    print("Eu ${verbo + "o"}");
    print("Tu ${verbo + "es"}");
    print("Ele ${verbo + "e"}");
    print("Ela ${verbo + "e"}");
    print("Nós ${verbo + "emos"}");
    print("Vós ${verbo + "eis"}");
    print("Eles ${verbo + "em"}");
    print("Elas ${verbo + "em"}");
  }
}

void main() {
  print("Digite o verbo terminado em er");
  String verbo = stdin.readLineSync()!;
  verboso(verbo);
}
