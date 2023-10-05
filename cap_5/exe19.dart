//Faça um programa que receba o tipo de ação, ou seja, uma letra a ser comercializada na
//bolsa de valores.
//o preço da de compra e o preço de venda de cada ação e que calcule e mostre
//o lucro de cada ação comercializada;
//a quantidade de ações com lucro superior a 1000
//a quantidade de ações com lucro inferior a 200
//o lucro total da empresa
//Finalize com o tipo de ação"F";

import 'dart:io';

void main() {
  List<String> nomeTipo = [];
  List<double> precoCompra = [];
  List<double> precoVenda = [];
  List<double> lucro = [];
  int contador = 0;
  int contadorLucroSuperior1000 = 0;
  int contadorLucroInferior200 = 0;
  do {
    print("Digite o tipo da ação");
    nomeTipo.add(stdin.readLineSync() ?? '');
    if(nomeTipo[contador].toUpperCase().substring(0, 1) == "F"){
      nomeTipo.removeAt(contador);
      break;
    }
    print("Digite o preço de compra");
    precoCompra.add(double.parse(stdin.readLineSync() ?? '0'));
    print("Digite o preço de venda");
    precoVenda.add(double.parse(stdin.readLineSync() ?? '0'));
    lucro.add(precoVenda[contador] - precoCompra[contador]);
    if (lucro[contador] > 100) {
      contadorLucroSuperior1000++;
    }
    if (lucro[contador] < 200) {
      contadorLucroInferior200++;
    }
    contador++;
  } while (nomeTipo[contador - 1].toUpperCase().substring(0, 1) != "F");

  for (int i = 0; i < nomeTipo.length; i++) {
    print("A empresa ${nomeTipo[i]}, teve  ${lucro[i]} de lucro");
  }
  print(
      "A quantidade de ações com lucro superior a 1000 é $contadorLucroSuperior1000");
  print(
      "A quantidade de ações com lucro inferior a 200 é $contadorLucroInferior200");
}
