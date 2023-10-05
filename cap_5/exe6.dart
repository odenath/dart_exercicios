//Uma loja utiliza o código V para transação à vista e P para a transação prazo
//Faça um programa que receba o código e o valor de quinze transações, calcule e mostre
//o valor total das compras à vista
//o valor total	das compras a prazo
//o valor total das compras efetuadas
//o valor da primeira prestação das compras a prazo juntas, sabendo que serão pagas
//em 3 vezes

import 'dart:io';

void main() {
  double compra;
  double comprasVista = 0;
  double comprasPrazo = 0;
  double comprasTotais = 0;
  double compraAtualParcelada = 0;
  String tipoVP;

  for (int i = 0; i < 15; i++) {
    print("Digite o valor da compra:");
    compra = double.parse(stdin.readLineSync() ?? '0');
    print("Digite o tipo de compra V ou P");
    tipoVP = stdin.readLineSync()!;
    if (tipoVP == 'V') {
      comprasVista += compra;
    }
    if (tipoVP == 'P') {
      comprasPrazo += compra;
    }
    comprasTotais = comprasVista + comprasPrazo;
    compraAtualParcelada = comprasPrazo / 3;
    print("Temos de total: $comprasTotais");
    print("Temos de total a vista: $comprasVista");
    print("Temos de total a prazo: $comprasPrazo");
    print("Temos de total a prazo: $compraAtualParcelada");
  }
}
