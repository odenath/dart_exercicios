//Faça um programa que receba dez números inteiros e mostre a quantidade de números
////primos dentre os números que foram digitados

// import 'dart:io';

// void main() {
//   int numero;
//   int contadorTotal = 0;

//   for (int i = 0; i < 2; i++) {
//     print("Digite o número ${i + 1}");
//     numero = int.parse(stdin.readLineSync() ?? '0');
//     int contador = 0; 
//     for (int j = 2; j < numero; j++) { 
//       if (numero % j == 0) {
//         contador++;
//       }
//     }
//     if (contador == 0) { 
//       contadorTotal++;
//     }
//   }
//   print("O número total de números primos é $contadorTotal");
// }




















import 'dart:io';

void main() {
  int numero;
  int contador = 0;
  int contadorTotal = 0;

  for (int i = 0; i < 2; i++) {
    print("Digite o número ${i + 1}");
    numero = int.parse(stdin.readLineSync() ?? '0');
    for (int j = 1; j <= numero; j++) {
      if (numero % j == 0) {
        contador++;
      }
    }
    if (contador == 2) {
      contadorTotal++;
    }
    contador = 0;
  }
  print("O número total de números primos são $contadorTotal");
}
