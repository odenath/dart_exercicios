//O preço ao consumidor, de um carro nova é a soma de:
//custo de fábrica + porcentagens do distribuidor + impostos
//Até 12.000,00      % distribuidor 5      % impostos isento
//Entre 12k e 25k    % distribuidor 10     % impostos 15
//Acima de 25k       % distribuidor 15     % impostos 20
//No exercício n foram especifico se o valor cobrado é cascata ou
//se é apenas em cima do valor de fábrica,
//como aqui é Brasil, vai ser cascata rs

import 'dart:io';

void main() {
  print("Digite o valor de custo de fábrica");
  double custo = double.parse(stdin.readLineSync() ?? '0');
  if (custo > 25000.00) {
    custo *= 1.15;// 15% distribuidor
    custo *= 1.20;// 20% imposto
    print("O valor total é de ${custo.toStringAsFixed(2)}  reais");
  } else if (custo <=25000.00 && custo > 12000.00) {
    custo *= 1.10;// 10% distribuidor
    custo *= 1.15;// 15% imposto
    print("O valor total é de $custo  reais");
  } else if (custo <= 12000.00) {
    custo *= 1.05;// 5% distribuidor
    print("O valor total é de $custo  reais");
  }
}




