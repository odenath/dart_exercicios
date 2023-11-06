// Faça um programa que preencha um vetor com sete números inteiros, calcule e mostre: List.filled(7, 0);
// os números múltiplos de 2
// os números múltiplos de 3
// os números múltiplos de 2 e de 3


import 'dart:io';

void main() {
  List<int> numeros = [];
  List<int> multiplos2 = [];
  int jM2 = 0;
  List<int> multiplos3 = [];
  int jM3 = 0;
  List<int> multiplos2e3 = [];
  int jM23 = 0;

  for (int i = 0; i < 7; i++) {
    print("Digite o número ${i + 1}");
    numeros.add(int.parse(stdin.readLineSync() ?? '0'));
    if (numeros[i] % 2 == 0) {
      multiplos2.add(numeros[i]);
      jM2++;
    }
    if (numeros[i] % 3 == 0) {
      multiplos3.add(numeros[i]);
      jM3++;
    }
    if (numeros[i]%2==0 && numeros[i]%3==0){
      multiplos2e3.add(numeros[i]);
      jM23++;
    }
  }
  print("Os números múltiplos de 2 são $multiplos2, totalizando $jM2 números");
  print("Os números múltiplos de 3 são $multiplos3, totalizando $jM3 números");
  print("Os números múltiplos de 2 e 3 são $multiplos2e3, totalizando $jM23 números");
}
