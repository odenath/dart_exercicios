// 3.
//
// Defina uma classe denominada PRODUTO com os seguintes atributos:
// número do produto e preço do produto.
// Essa classe deve possuir, também, um método para calcular o valor do desconto,
// ou seja, produtos com preço superior a R$ 100,00 possuem desconto de 15%
//e os demais produtos têm desconto de 5%.
//Defina uma classe CLIENTE com os seguintes atributos:
// número do cliente, nome do cliente e sexo do cliente.
// Essa classe deve possuir, também, um método para calcular o desconto adicional,
// ou seja, clientes do sexo feminino (F ou f) têm um desconto adicional de 5%
// sobre o preço do produto e os demais clientes (M ou m) não possuem esse desconto.
// Defina uma classe denominada COMPRA com os seguintes atributos:
// número do produto, número do cliente, quantidade e valor total.
// Essa classe deve possuir ainda um método para calcular o valor total, ou seja,
// a quantidade multiplicada pelo preço final.
//O preço final é o preço do produto menos o desconto adicional,
// quando este existe.
// Faça um programa que carregue três produtos validando apenas o preço para que
//este esteja entre R$ 20,00 e R$ 350,00.
// Carregue três clientes validando para que o sexo seja M, m, F ou f.
// E, por fim, carregue uma compra digitando um número do produto, um número do cliente
// e a quantidade comprada do produto e calculando o valor total (método da classe COMPRA).
// Suponha sempre a digitação de dados válidos.

import 'dart:io';

class Produto {
  int numeroProduto;
  double precoProduto;

  Produto(this.numeroProduto, this.precoProduto);

  void desconto() {
    if (precoProduto > 100) {
      precoProduto *= 0.85;
      print("O preço do produto com desconto é $precoProduto");
    } else {
      precoProduto *= 0.95;
      print("O preço do produto com desconto é $precoProduto");
    }
  }

  @override
  String toString() {
    return 'Produto{numeroProduto: $numeroProduto, precoProduto: $precoProduto}';
  }
}

class Cliente {
  int numeroCliente;
  String nomeCliente;
  String sexoCliente;

  Cliente(this.numeroCliente, this.nomeCliente, this.sexoCliente);

  double descontoAdicional(double precoProduto) {
    if (sexoCliente == "F" || sexoCliente == "f") {
      print("O cliente tem desconto adicional de 5%");
      return 0.95 * precoProduto;
    } else {
      print("O cliente não tem desconto adicional");
      return precoProduto;
    }
  }

  @override
  String toString() {
    return 'Cliente{numeroCliente: $numeroCliente, nomeCliente: $nomeCliente, sexoCliente: $sexoCliente}';
  }
}

class Compra {
  int quantidade;
  double valorTotal = 0;
  Cliente cliente;
  Produto produto;

  Compra(this.quantidade, this.cliente, this.produto);

  void valorTotalMetodo() {
    valorTotal = quantidade * produto.precoProduto;
    print("O valor total é $valorTotal");
    valorTotal = cliente.descontoAdicional(valorTotal);
    print("O valor total com desconto adicional é $valorTotal");
  }

  @override
  String toString() {
    return 'Compra{quantidade: $quantidade, valorTotal: $valorTotal, cliente: ${cliente.nomeCliente}, produto: ${produto.numeroProduto}';
  }
}

void main() {
  print(
      "Bem vindo ao meu programa, eu demorei algumas horas, mas foi feito com amor");
  List<Produto> produtos = [];
  //3 produtos
  for (int i = 0; i < 3; i++) {
    print("Digite o número do produto");
    int numeroProduto = int.parse(stdin.readLineSync() ?? "0");
    print("Digite o preço do produto");
    double precoProduto = double.parse(stdin.readLineSync() ?? "0");

    while (precoProduto <= 20 || precoProduto >= 350) {
      print("Digite novamente, preço incorreto, entre 20 e 350");
      precoProduto = double.parse(stdin.readLineSync() ?? "0");
    }
    produtos.add(Produto(numeroProduto, precoProduto));
  }
  produtos.forEach((element) {
    print(element.toString());
  });
  produtos.forEach((element) {
    element.desconto();
  });
  produtos.forEach((element) {
    print(element.toString());
  });
  List<Cliente> clientes = [];
  //3 clientes
  for (int i = 0; i < 3; i++) {
    print("Digite número do cliente");
    int numeroCliente = int.parse(stdin.readLineSync() ?? "0");
    print("Digite o nome do cliente");
    String nomeCliente = stdin.readLineSync()!;
    print("Digite o sexo do cliente M ou m, F ou f");
    String sexoCliente = stdin.readLineSync()!;
    while (sexoCliente != "M" &&
        sexoCliente != "m" &&
        sexoCliente != "F" &&
        sexoCliente != "f") {
      print("Digite novamente, sexo incorreto");
      sexoCliente = stdin.readLineSync()!;
    }
    clientes.add(Cliente(numeroCliente, nomeCliente, sexoCliente));
  }
  clientes.forEach((element) {
    print(element.toString());
  });
  print("Vamos as compras");
  print("Digite a quantidade de produtos");
  int quantidade = int.parse(stdin.readLineSync() ?? "0");
  print("Digite o número do cliente, pode ser o primeiro, segundo ou terceiro 1,2,3");
  int numeroCliente = int.parse(stdin.readLineSync() ?? "0");
  print("Digite o número do produto, pode ser o primeiro, segundo ou terceiro 1,2,3");
  int numeroProduto = int.parse(stdin.readLineSync() ?? "0");
  
  Compra c1 = Compra(quantidade, clientes[numeroCliente-1], produtos[numeroProduto-1]);
  c1.valorTotalMetodo();
  print(c1.toString());
}
