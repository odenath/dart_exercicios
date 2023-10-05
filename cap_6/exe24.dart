// Faça um programa que leia um vetor com 15 posições para números inteiros. Crie, a seguir, um vetor
// resultante que contenha todos os números primos do vetor digitado. Escreva o vetor resultante
// primos.add(vetor.where((number) => isPrime(number))).toList();
import 'dart:math';

// bool isPrime(int number) {
//   if (number <= 1) {
//     return false;
//   }
//   for (int i = 2; i * i <= number; i++) {
//     if (number % i == 0) {
//       return false;
//     }
//   }
//   return true;
// }
bool isPrime(int number) {
  int divisores = 0;
  int i = 1;
  while (i <= number) {
    if (number % i == 0) {
      divisores++;
    }
    i++;
  }
  if (divisores == 2) {
    return true;
  } else {
    return false;
  }
}

void main() {
  List<int> vetor = List.generate(15, (_) => Random().nextInt(101));
  List<int> primos = [];
  for (int number in vetor) {
    if (isPrime(number)) {
      primos.add(number);
    }
  }
  print(vetor);
  print(primos);
}
