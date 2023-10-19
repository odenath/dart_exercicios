//Crie um programa que:
//receba o preço de 10 produtos e armazene-os em um vetor;
//receba a quantidade estocada de cada um desses produtos em cinco armazéns diferentes, utilizando uma matriz 5x10
//O programa deverá calcular e mostrar
//a quantidade de produtos estocados em cada um dos armazéns --OK
//a quantidade de cada um dos produtos estocados em todos os armazéns juntos --OK
//o preço do produto q possuir o maior estoque em um único armazém --OK
//o menor estoque armazenado
//o custo de cada armazém.
// List.generate(4, (index) => List.generate(10, (index) => Random().nextInt(100)));
//depois preciso trocar de 3 para 10, depois eu faço

// import 'dart:math';
import 'dart:io';

void main() {
  List<int> produtosPreco = [];
  List<List<int>> matriz =
      List.generate(3, (index) => List.generate(3, (index) => 0));
  List<int> armazemNumero = [];
  List<int> qtdPdtTodosArmazens = List.filled(3, 0);
  List<int> armazemCusto = List.filled(3, 0);

  for (int produto = 0; produto < 3; produto++) {
    print("Digite o preço do produto ${produto + 1}");
    produtosPreco.add(int.parse(stdin.readLineSync() ?? '0'));
  }

  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      print("Digite a quantidade do produto ${j + 1} no armazém ${i + 1}");
      matriz[i][j] = int.parse(stdin.readLineSync() ?? '0');
    }
  }
  print("Preços dos produtos:");
  print(produtosPreco);
  print("Quantidade de produtos onde Linha= armazém coluna= qtd de produto");
  for (List<int> i in matriz) {
    print(i);
  }
  print("Quantidade de produtos em cada armazém");
  // for (int i = 0; i < 3; i++) {
  //   int soma = 0;
  //   for (int j = 0; j < 3; j++) {
  //     soma += matriz[i][j];
  //   }
  //   armazemNumero.add(soma);
  //   soma = 0;
  // }
  armazemNumero =
      matriz.map((e) => e.reduce((value, element) => value + element)).toList();
  print(armazemNumero);
  //a quantidade de cada um dos produtos estocados em todos os armazéns juntos
  for (int i = 0; i < matriz.length; i++) {
    for (int j = 0; j < 3; j++) {
      qtdPdtTodosArmazens[j] += matriz[i][j];
    }
  }
  print("Quantidade de cada um dos produtos em todos os armazéns juntos");
  print(qtdPdtTodosArmazens);
  //o preço do produto q possuir o maior estoque em um único armazém
  int temp = matriz[0][0];
  int precoMaiorEstoque1Armazem = produtosPreco[0];
  for (int i = 0; i < matriz.length; i++) {
    for (int j = 0; j < 3; j++) {
      if (temp < matriz[i][j]) {
        temp = matriz[i][j];
        precoMaiorEstoque1Armazem = produtosPreco[j];
      }
    }
  }
  print(
      "O preço do produto com maior estoque em um único armazem é de R\$$precoMaiorEstoque1Armazem");
  //o menor estoque armazenado
  // int temp2 = matriz[0][0];
  // for (int i = 0; i < matriz.length; i++) {
  //   for (int j = 0; j < 3; j++) {

  //   }
  // }
  //o menor estoque armazenado
  int menorEstoque =
      matriz.expand((e) => e).reduce((a, b) => a < b ? a : b).toInt();
  print("O menor estoque é de: $menorEstoque");
  
  //o custo de cada armazém.
  //matriz[i][j] *preço[j]
  for (int i = 0; i < matriz.length; i++) {
    int soma = 0;
    for (int j = 0; j < 3; j++) {
      soma += matriz[i][j] * produtosPreco[j];
    }
    armazemCusto[i] = soma;
    soma = 0;
  }
  print("O custo de cada armazém é de:");
  print(armazemCusto);
}
