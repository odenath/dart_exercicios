//Faça um programa que receba uma frase e faça a criptografia, retirando das palavras suas vogais. O programa deverá armazenar estas vogais
//e suas posições originais em vetores mostrar a frase criptografada e posteriormente descriptografá-la.

import 'dart:io';

dynamic criptvogal(String frase) {
  List<String> vogais = ["a", "e", "i", "o", "u"];
  Map<int,String> vogaislocal = {};
  List<String> fraseList = frase.split('');
  for (int k = 0; k < fraseList.length; k++) {
    if (vogais.contains(fraseList[k])) {
      vogaislocal.addAll({k:fraseList[k]});
      fraseList[k] = "*";
    }
  }
  print(vogaislocal);
  print(fraseList.join());
  print("Descriptografando");
  for(int i = 0; i<fraseList.length;i++){
    if(fraseList[i]=="*"){
      fraseList[i] = vogaislocal[i]!;
    }
  }
  print(fraseList.join());
}

void main() {
  print("Digite uma frase");
  String frase = stdin.readLineSync()!;
  criptvogal(frase);
}
