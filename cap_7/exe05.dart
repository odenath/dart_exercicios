// Elabore um programa que preencha uma matriz 12x4 com os valores das vendas de uma loja, em que cada
// linha representa um mês do ano e cada coluna representa uma semana do mês. O programa deverá calcular
// e mostrar:
// - o total vendido em cada mês do ano, mostrando o nome do mês por extenso;
// - o total vendido em cada semana durante todo o ano;
// - o total vendido pela loja no ano


import 'dart:math';

void main() {
  List<List<int>> balanceteAno = List.generate(
      12, (row) => List.generate(4, (number) => Random().nextInt(100)));
  List<int> meses = List.filled(12, 0);
  int totalVendido = 0;

  print(balanceteAno);
  for (int i = 0; i < 12; i++) {
    
    for (int j = 0; j < 4; j++) {
      meses[i] += balanceteAno[i][j];
      totalVendido += balanceteAno[i][j];
      print(
          "Total vendido do mês ${i+1} na semana ${j+1}  é ${balanceteAno[i][j]}");
    }
     switch (i) {
      case 0:
        print("Janeiro ${meses[i]}");
        break;
      case 1:
        print("Fevereiro ${meses[i]}");
        break;
      case 2:
        print("Março ${meses[i]}");
        break;
      case 3:
        print("Abril ${meses[i]}");
        break;
      case 4:
        print("Maio ${meses[i]}");
        break;
      case 5:
        print("Junho ${meses[i]}");
        break;
      case 6:
        print("Julho ${meses[i]}");
        break;
      case 7:
        print("Agosto ${meses[i]}");
        break;
      case 8:
        print("Setembro ${meses[i]}");
        break;
      case 9:
        print("Outubro ${meses[i]}");
        break;
      case 10:
        print("Novembro ${meses[i]}");
        break;
      case 11:
        print("Dezembro ${meses[i]}");
        break;
    }
   
  }
  print("Total vendido no ano $totalVendido");
}
