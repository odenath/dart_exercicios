// Faça um programa que receba o total das vendas de cada vendedor de uma loja e armazene-as em um
// vetor. Receba também o percentual de comissão a que cada vendedor tem direito e armazeneos em
// outro vetor.
// Receba os nomes desses vendedores e armazeneos em um terceiro vetor. Existem apenas 10 vendedores
// na loja. Calcule e mostre:
// -Um relatório com os nomes dos vendedores e os valores a receber referente à comissão;
// -o total das vendas de todos os vendedores;
// -o maior valor a receber e o nome de quem o receberá
// -o menor valor a receber e o nome de quem o receberá.

import 'dart:io';

void main() {
  List<String> nomeVendedor = List.filled(10, '');
  List<double> vendasVendedor = List.filled(10, 0);
  List<double> comissaoVendedor = List.filled(10, 0);

  for (int i = 0; i < 10; i++) {
    print('Digite o nome do vendedor: ');
    nomeVendedor[i] = stdin.readLineSync() ?? '';
    print('Digite o valor da venda do vendedor: ');
    vendasVendedor[i] = double.parse(stdin.readLineSync() ?? '0');
    print('Digite o percentual de comissão do vendedor: ');
    comissaoVendedor[i] = double.parse(stdin.readLineSync() ?? '0');
  }
  for (int i = 0; i < 10; i++) {
    print(
        "O vendedor ${nomeVendedor[i]} tem os valores de ${vendasVendedor[i]} mais a"
        " comissão de ${comissaoVendedor[i]}%, totalizando ${((vendasVendedor[i] * comissaoVendedor[i]) / 100) + vendasVendedor[i]}");
  }
  double somaVendas = vendasVendedor.reduce((a, b) => a + b);
  print("O valor total das vendas são de $somaVendas");
  double iMaiorValor = vendasVendedor.reduce((a, b) => a > b ? a : b);
  int iIndiceMaior =
      vendasVendedor.indexWhere((element) => element == iMaiorValor);
  print("A maior venda  é $iMaiorValor no indice $iIndiceMaior chamado ${nomeVendedor[iIndiceMaior]}");
  double iMenorValor = vendasVendedor.reduce((a, b) => a < b ? a : b);
  int iIndiceMenor =
      vendasVendedor.indexWhere((element) => element == iMenorValor);
  print("O menor valor é de $iMenorValor no indice $iIndiceMenor chamado ${nomeVendedor[iIndiceMenor]}");
}
