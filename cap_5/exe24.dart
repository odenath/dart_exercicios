// Faça um programa que receba um conjunto de valores inteiros e positivos, calcule e mostre o maior e o menor valor do conjunto.
// Considere que:
// --para encerrar a entrada de dados, dever ser digitado o valor zero;
// --para valores negativos, deve ser enviado uma mensagem;
// --os valores negativos ou iguais a zero não entrarão nos cálculos



import 'dart:io';

void main() {

  int? menorNumero ;
  int? maiorNumero ;
  bool continua = true;

  while (continua) {
    print("Digite um número inteiro e positivo (ou 0 para encerrar):");
    int numero = int.parse(stdin.readLineSync() ?? '0');

    if (numero == 0) {
      continua = false;
    } else if (numero < 0) {
      print("Valor inválido. Digite apenas números inteiros e positivos.");
    } 
    else {
      if (menorNumero == null || numero < menorNumero) {
        menorNumero = numero;
      }
      if (maiorNumero == null || numero > maiorNumero) {
        maiorNumero = numero;
      }
    }
  }

  if (menorNumero == null || maiorNumero == null) {
    print("Não foram digitados números válidos.");
  } else {
    print("O menor número digitado foi $menorNumero.");
    print("O maior número digitado foi $maiorNumero.");
  }
}




  


  
  // int menorNumero;
  // int maiorNumero;
  // bool continua = true;
  
  // while (continua) {
  //   print("Digite um número inteiro e positivo (ou 0 para encerrar):");
  //   int numero = int.parse(stdin.readLineSync() ?? '0');
    
  //   if (numero == 0) {
  //     continua = false;
  //   } else if (numero < 0) {
  //     print("Valor inválido. Digite apenas números inteiros e positivos.");
  //   } else {
  //     if (menorNumero == null || numero < menorNumero) {
  //       menorNumero = numero;
  //     }
  //     if (maiorNumero == null || numero > maiorNumero) {
  //       maiorNumero = numero;
  //     }
  //   }
  // }
  
  // if (menorNumero == null || maiorNumero == null) {
  //   print("Não foram digitados números válidos.");
  // } else {
  //   print("O menor número digitado foi $menorNumero.");
  //   print("O maior número digitado foi $maiorNumero.");
  // }