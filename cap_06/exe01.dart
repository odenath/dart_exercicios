// Faça um programa que preencha um vetor com seis elementos numéricos inteiros, calcule e mostre:
// todos os números pares
// a quantidade de números pares
// todos o números ímpares
// a quantidade de números ímpares

import 'dart:io';

void main() {
  List<int> numeros = List.filled(6, 0);
  List<int> pares = [];
  List<int> impares = [];
  int contPar = 0;
  int contImpar = 0;
   int jimpar = 0;
   int jpar = 0;  
  for (int i = 0; i < 6; i++) {
    print("Digite o número");
    numeros[i] = int.parse(stdin.readLineSync() ?? '0');
    
    if (numeros[i] % 2 == 0) {
      pares.add(numeros[i]);
      jpar++;
      contPar++;
    }
   
    if (numeros[i] % 2 != 0) {
      impares.add(numeros[i]);
      jimpar++;
      contImpar++;
    }
  }
  print("Os números pares são $pares");
  print("A quantidade de números pares é $contPar");
  print("Os números ímpares são $impares");
  print("A quantidade de números ímpares é $contImpar");
  print(jpar+ jimpar);
}
