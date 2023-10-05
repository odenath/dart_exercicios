// Faça um programa que receba o nome de oito clientes e armazene-os em um vetor.
// Em um segundo vetor, armazene a quantidade de DVDs locados em 2006 por cada um dos 8 clientes.
// Sabe-se que, para cada dez locações, o cliente tem o direito a uma locação grátis.
// Faça um programa que mostre o nome de todos os clientes, com a quantidade de locações grátis a que ele tem direito.

import 'dart:io';

void main() {
  List<String> nomeClientes = List.filled(8, "");
  List<int> qtdDVDs = List.filled(8, 0);
  List<double> qtdGratis = List.filled(8, 0);

  for (int i = 0; i < 8; i++) {
    print("Digite o seu nome cliente da locadora:");
    nomeClientes[i] = stdin.readLineSync() ?? '';
    print("digite a quantidade de dvds");
    qtdDVDs[i] = int.parse(stdin.readLineSync() ?? '0');
  }
  for (int i = 0; i < 8; i++) {
    if (qtdDVDs[i] % 8 >= 1) {
      qtdGratis[i] = (qtdDVDs[i] / 8);
    } else {
      qtdGratis[i] = 0;
    }
  }
  for (int i = 0; i < 8; i++) {
    print(
        "O cliente ${nomeClientes[i]} que tem ${qtdDVDs[i]} e ganhou ${qtdGratis[i].truncate()} grátis");
  }
}
