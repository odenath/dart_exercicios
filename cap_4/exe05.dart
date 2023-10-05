//Faça um programa que receba 2 números e execute as operações
//listadas a seguir, de acordo com a escolha do usuário:
//
// 1 - Média entre os números digitados
// 2 - Diferença do maior pelo menor
// 3 - Produto entre os números digitados
// 4 - Divisão do primeiro pelo segundo
//
//Se o 2º número for 0, encerre e avise o pq


import 'dart:io';

void main() {
  double number1 = double.parse(stdin.readLineSync() ?? '0');
  double number2 = double.parse(stdin.readLineSync() ?? '0');

  if (number2 == 0) {
    print("O segundo número é igual a zero. Encerrando o programa.");
  } else {
    print("Escolha uma operação:");
    print("1 - Média entre os números digitados");
    print("2 - Diferença do maior pelo menor");
    print("3 - Produto entre os números digitados");
    print("4 - Divisão do primeiro pelo segundo");

    int escolha = int.parse(stdin.readLineSync() ?? '0');

    switch (escolha) {
      case 1:
        double media = (number1 + number2) / 2;
        print("A média entre os números é: $media");
        break;
      case 2:
        double maior = number1 > number2 ? number1 : number2;
        double menor = number1 < number2 ? number1 : number2;
        double diferenca = maior - menor;
        print("A diferença entre o maior e o menor número é: $diferenca");
        break;
      case 3:
        double produto = number1 * number2;
        print("O produto entre os números é: $produto");
        break;
      case 4:
        double divisao = number1 / number2;
        print("A divisão do primeiro pelo segundo é: $divisao");
        break;
      default:
        print("Escolha inválida.");
    }
  }
}
