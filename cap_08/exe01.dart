//Faça uma sub-rotina que receba um número inteiro e positivo N como parâmetro e retorne a soma do números inteiros existentes entre o
//número 1 e N(inclusive).
// 3 1+2+3 = 6

import 'dart:io';

int somaTudo(int a, int index, int inicio) {
  //casa base
  if (index == a) {
    return inicio;
  }
  //caso recursivo
  index += 1;
  inicio += index;
  return somaTudo(a, index, inicio);
}
// int somaTudo(int a) {
//   for (int i = 0; i < a; i++) {
//     a += i;
//     print(a);
//   }
//   return a;
// }

void main() {
  print("Digite um número inteiro e positivo");
  int a = int.parse(stdin.readLineSync() ?? '0');
  print(somaTudo(a, 0, 0));
}
