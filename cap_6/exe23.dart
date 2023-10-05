// Faça um programa que leia 2 vetores(A e B) com 5 posições para números inteiros. 
// O programa deve, então, subtrair o primeiro elemento do último de B, acumulando o valor, 
// subtrair o segundo elemento de A do penúltimo de B, acumulando o valor, e assim por diante.
//  Ao final, mostre o resultado de todas
// as subtrações realizadas

import 'dart:io';

void main() {
  List<int?> vetorA = [];
  List<int?> vetorB = [];
  List<double?> vetorC = [];
  for (int i = 0; i < 3; i++) {
    print("Digite o valor do vetor A");
    vetorA.add(int.tryParse(stdin.readLineSync() ?? ''));
    print("Digite o valor do vetor B");
    vetorB.add(int.tryParse(stdin.readLineSync() ?? ''));
  }
  for (int i = 0; i < vetorA.length; i++) {
    vetorC.add(vetorA[i]! - vetorB[vetorB.length - i - 1]!.toDouble());
  }
  print(vetorA);
  print(vetorB);
  print(vetorC);
}























// import 'dart:io';

// void main(){
//   List<int?> vetorA = [];
//   List<int?> vetorB = [];
//   List<int?> vetorC = [];
//   int? valor;
//   for (int i = 0; i < 5; i++) {
//     print("Digite o valor do vetor A");
//     valor = int.tryParse(stdin.readLineSync() ?? '');
//     vetorA.add(valor);
//     print("Digite o valor do vetor B");
//     valor = int.tryParse(stdin.readLineSync() ?? '');
//     vetorB.add(valor);
//   }
//   print(vetorA);
//   print(vetorB);
//   for (int i = 0; i < 5; i++) {
//     vetorC.add(vetorA[i]! - vetorB[4 - i]!);
//   }
//   print(vetorC);
// }