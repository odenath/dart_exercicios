// Elabore um programna que: preencha uma matriz 6x4; recalcule a matriz digitada,
//  onde cada linha deverá ser multiplicada pelo maior
// elemento de cada linha em questão;mostre a matriz resultante;

import 'dart:io';

void main() {
  List<List<int>> matriz =
      List.generate(6, (row) => List.generate(4, (collumn) => 0));
  List<List<int>> matrizD =
      List.generate(6, (row) => List.generate(4, (collumn) => 0));
  int maior;

  for (int i = 0; i < 6; i++) {
    for (int j = 0; j < 4; j++) {
      print("Digite o ${j + 1}º elemento da ${i + 1}º linha: ");
      matriz[i][j] = int.parse(stdin.readLineSync() ?? '0');
    }
  }
  for (List<int> linha in matriz) {
    print(linha);
  }
  print("");
  for (List<int> linha in matriz) {
    maior = linha.reduce((a, b) => a > b ? a : b).toInt();
    matrizD[matriz.indexOf(linha)] = linha.map((e) => e * maior).toList();
  }
  for (List<int> linha in matrizD) {
    print(linha);
  }
}
