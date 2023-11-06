//Uma agência bancária possui vários clientes que podem fazer investimentos com rendimentos mensais, conforme a tabela a seguir:
//poupança      1,5%
//poupança-plus 2%
//Renda fixa    4%
//Faça um programa que leia o código do cliente, o tipo do investimento e o valor
////investido, e que calcule e mostre o rendimento mensal de acordo com o tipo do //investimento.
//No final do programa deverá mostrar o total investido e o total de juros pagos
//A leitura terminará quando o código do cliente digitado for menor ou igual a 0;

import 'dart:io';

void main() {
  int cod = 0;
  double valor;
  int tipoInvestimento;
  double poupa = 0;
  double poupaPlus = 0;
  double rendaFixa = 0;
  double juros = 0;
  double cont = 0;
  bool continua = true;
  do {
    print("Digite o seu código de identificação");
    cod = int.parse(stdin.readLineSync() ?? '0');
    print("Digite o valor");
    valor = double.parse(stdin.readLineSync() ?? '0');
    if(valor <= 0){
      break;
    }
    print("Digite o tipo de investimento 1-poupança 2-poupaPlus 3-renda-fixa");
    tipoInvestimento = int.parse(stdin.readLineSync() ?? '0');
    switch (tipoInvestimento) {
      case 1:
        poupa = valor * 1.015;
        juros = valor * 0.015;
      case 2:
        poupaPlus = valor * 1.02;
        juros = valor * 0.02;
      case 3:
        rendaFixa = valor * 1.04;
        juros = valor * 0.04;
    }
    cont += valor;
  } while (continua);

  print("O total investido foi $cont. do cod $cod");
  print("O total de juros pagos foi $juros");
  print("O total de valores da poupança foi $poupa");
  print("O total de valores da poupança plus foi $poupaPlus");
  print("O total de valores da renda fixa foi $rendaFixa");

}
