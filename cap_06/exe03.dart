// Faça um programa para controlar o estoque de mercadorias de uma empresa. Inicialmente,
// o programa deverá preencher dois vetores com 10 posições cada,
//onde o primeiro corresponde ao código do produto e o segundo o total desse produto em estoque.
//Logo após, o programa deverá ler um conjunto indeterminado de dados contento o código de
// um cliente e o código de um produto q ele deseja comprar juntamente com a quantidade.
//Código igual a zero indica fim do programa. O programa deverá verificar:
// -se o cod existe. caso contrário cod inválido
// -cada pedido feito por um clinte só pode ser atendido integralmente. Caso isso n seja possível, escrever a mensagem.
// Pedido atendido. Obrigado e volte sempre;
// -efetuar a atualização do estoque somente se o pedido for atendido integralmente;
// -no final do programa, escrever os códigos dos produtos com seus respectivos estoque atualizados
//int posi = codPro.indexOf(codCompraP);

import 'dart:io';

void main() {
  List<int> codProdutos = List.filled(10, 0);
  int codProduto;
  List<int> estoqueProdutos = List.filled(10, 0);
  int qtdProdutos = 0;
  List<int> codCliente = [];
  bool continua = true;

  for (int i = 0; i < 4; i++) {
    print("Digite o código do produto ${i + 1}, n pode ser 0");
    codProdutos[i] = int.parse(stdin.readLineSync() ?? '0');
    print("Digite a quantidade em estoque do produto ${i + 1}");
    estoqueProdutos[i] = int.parse(stdin.readLineSync() ?? '0');
  }
  while (continua) {
    print("Codigos atuais dos produtos: $codProdutos");
    print("Estoque atual dos produtos: $estoqueProdutos");
    print("Digite o código do produto");
    codProduto = int.parse(stdin.readLineSync() ?? '0');
    if (codProduto == 0) {
      print("Programa finalizado");
      break;
    } else if (!codProdutos.contains(codProduto)) {
      print("Digite um código válido");
      print(codProdutos);
    } else if (codProdutos.contains(codProduto)) {
      int posi = codProdutos.indexOf(codProduto);
      print("Digite o código do cliente");
      codCliente.add(int.parse(stdin.readLineSync() ?? '0'));
      print("Digite a quantidade de produtos no indice $posi");
      print("Estoque atual dos produtos: $estoqueProdutos");
      qtdProdutos = int.parse(stdin.readLineSync() ?? '0');
      if (estoqueProdutos[posi] == qtdProdutos) {
        estoqueProdutos[posi] = 0;
        codProdutos[posi] = 0;
      }
    }
  }
}
