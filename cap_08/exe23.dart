//Crie um programa que receba 3 valores(obrigatoriamente maiores que 0), representando as medidas dos 3 lados do triângulo.
//Elabore uma sub-rotina para:
//determinar se esses lados formam um triângulo(sabe-se, para ser um triângulo, a medida de um lado deve ser inferior à soma das medidas
//dos outros dois
//determinar e mostrar o tipo de triângulo(equilátero, isóceles ou escaleno), caso as medidas formem um triângulo;
//
//Todas essas mensagens devem ser mostradas no programa principal

import 'dart:io';

List<int> trianguloEh() {
  List<int> lados = [];
  while (lados.length < 3) {
    print("Digite o valor do triangulo");
    lados.add(int.parse(stdin.readLineSync() ?? '0'));
    maiorQueZero(lados);
  }

  return lados;
}

dynamic maiorQueZero(List<int> lados) {
  if (lados.last <= 0) {
    print("Digite um valor maior que zero");
    lados.removeLast();
  }
  return lados;
}

dynamic trianguloSera(List<int> lados) {
  if (lados[0] < lados[1] + lados[2] &&
      lados[1] < lados[0] + lados[2] &&
      lados[2] < lados[0] + lados[1]) {
    print("É um triangulo");
  } else {
    print("Não é um triangulo");
  }
}
dynamic tipoTriangulo(List<int> lados) {
  if (lados[0] == lados[1] && lados[1] == lados[2]) {
    print("É um triangulo equilatero");
  } else if (lados[0] == lados[1] || lados[1] == lados[2] || lados[0] == lados[2]) {
    print("É um triangulo isóceles");
  } else {
    print("É um triangulo escaleno");
  }
}

void main() {
  List<int> lados = trianguloEh();
  print(trianguloSera(lados));
  print(tipoTriangulo(lados));
}
