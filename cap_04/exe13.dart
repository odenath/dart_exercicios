//Faça um programa que receba o preço de um produto, calcule e mostre, de acordo com
// a tebela a seguir o novo preço e a classificação

//até 50	 5% de aumento
//Entre 50 e 100 10% de aumento
//Acima 100  	 15% de aumento

//Novo Preço
//até 80         barato
//entre 80-120   normal
//entre 120-200  caro
//maior 200	 muito caro
import 'dart:io';

class Produto {
  late double preco;
  late String classificacao;
  void calcularPreco(double preco) {
    if (preco <= 50) {
      this.preco = preco * 1.05;
      print("barato");
    } else if (preco > 50 && preco <= 100) {
      this.preco = preco * 1.1;
      print("normal");
    } else {
      this.preco = preco * 1.15;
      print("caro");
    }
  }

  Produto(double preco, String classificacao) {
    this.preco = preco;
    this.classificacao = classificacao;
  }
}

void main() {
  Produto p1 = Produto(0, "");
  print("Digite o preço do produto");
  p1.preco = double.parse(stdin.readLineSync()!);
  p1.calcularPreco(p1.preco);
}
