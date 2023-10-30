//Faça um programa para criar os arquivos a seguir: Clientes Recebimentos.

import 'dart:io';

void main() {
  final List<String> cliente = ["Cod_Cli:", "Nome:", "Endereco:", "Nome:"];
  final List<String> recebimento = [
    "Num_doc:",
    "Valor_doc:",
    "Data_emissao:",
    "Data_vencimento:",
    "Cod_Cli:"
  ];
  String pathClientes =
      'D:\\flutter-exercises\\clientes.txt'; // Caminho absoluto
  String pathRecebimentos =
      'D:\\flutter-exercises\\recebimentos.txt'; // Caminho absoluto

  File clientes = File(pathClientes);
  File recebimentos = File(pathRecebimentos);

  if (!clientes.existsSync() && !recebimentos.existsSync()) {
    clientes.createSync();
    recebimentos.createSync();
  }

  // clientes.writeAsStringSync(RegExp(r"\w+\:")
  //         .allMatches(cliente.join(";"))
  //         .map((e) => e.group(0))
  //         .join(";\n") +
  //     ";");
    clientes.writeAsStringSync(cliente.join(" | ") + " | ");

  // recebimentos.writeAsStringSync(RegExp(r"\w+\:")
  //         .allMatches(recebimento.join(";"))
  //         .map((e) => e.group(0))
  //         .join(";\n") +
  //     ";");
    recebimentos.writeAsStringSync(recebimento.join(" | ") + " | \n");
}
