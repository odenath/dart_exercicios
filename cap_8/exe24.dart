//Faça um programa que receba a temperatura média de cada mês do ano e armazene-as em um vetor. O programa deverá calcular e mostrar:
//a maior temperatura
//a menor temperatura
//juntamente com o mês em que elas ocorreram(o mês deverá ser mostrado por extenso:1=janeiro; 2=fevereiro;...)

import 'dart:io';

void maior(List<int> climate) {
  List<int> big = [];
  big.add(climate.reduce((a, b) => a > b ? a : b));
  big.add(climate.indexOf(big[0]));
  print(big);
  finalBigSmall(big);
}

void menor(List<int> climate) {
  List<int> small = [];
  small.add(climate.reduce((a, b) => a < b ? a : b));
  small.add(climate.indexOf(small[0]));
  print(small);
  finalBigSmall(small);
}

void finalBigSmall(List<int> big) {
  List<String> months = [
    'Janeiro',
    'Fevereiro',
    'Março',
    'Abril',
    'Maio',
    'Junho'
  ];
  print(
      'A maior temperatura mais extrema foi de ${big[0]}°C no mês de ${months[big[1]]}');
}

void main() {
  List<int> temperaturas = [];

  for (int i = 0; i < 12; i++) {
    print("Digite a temperatura do mês ${i + 1}");
    temperaturas.add(int.parse(stdin.readLineSync() ?? '0'));
  }
  maior(temperaturas);
  menor(temperaturas);
}
