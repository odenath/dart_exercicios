//Um banco concederá um crédito especial aos seus clientes
//de acordo com o saldo médio do último ano
//faça um programa que receba o saldo médio de um cliente e calcule o valor do crédito de acordo
//com a tabela:
// acima 400 	   30% de saldo médio
// entre 300-400   25% de saldo médio
// entre 200-300   20% de saldo médio
// até  200	   10% de saldo médio

import 'dart:io';

void main() {
  print("Digite o seu saldo:");
  double saldo = double.parse(stdin.readLineSync() ?? '0');
  if (saldo > 400) {
    print("Seu crédito é de ${saldo * 1.3}");
  } else if (saldo < 400 && saldo >= 300) {
    print("Seu crédito é de ${saldo * 1.25}");
  } else if (saldo <= 200 && saldo < 300) {
    print("Seu crédito é de ${saldo * 1.20}");
  } else if (saldo < 200) {
    print("Seu crédito é de ${saldo * 1.20}");
  } else {
    print("Digite um valor válido");
  }
}








//  while (continuar == true) {
//     print("Digite o seu saldo:");

//     switch (options) {
//       case 1:
//     }
//   }
