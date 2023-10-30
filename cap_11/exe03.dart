//Faça um programa que inclua os recebimentos no arquivo criado no exercício 1,
// devendo verificar se o cliente já se encontra cadastrado
//Onde será que vc pode estar em 5 anos? Só o céu é o limite!

import 'dart:io';

List<dynamic> pathClientes() {
  String pathClientes =
      'D:\\flutter-exercises\\clientes.txt'; // Caminho absoluto
  File clientes = File(pathClientes);
  String pathRecebimentos =
      'D:\\flutter-exercises\\recebimentos.txt'; // Caminho absoluto
  File recebimentos = File(pathRecebimentos);
  return [clientes, recebimentos];
}

void cadastrado(File clientes, dynamic codigo) {
  // int codigoInt = codigo as int;
  if (clientes.readAsStringSync().contains(codigo.toString())) {
    print("Cliente já cadastrado");
  } else {
    print("Cliente não cadastrado");
  }
}
dynamic cadastrarRecebimentos( File recebimentos, List<dynamic> codRecebidos){
  RandomAccessFile recebimento1 = recebimentos.openSync(mode: FileMode.append);
  recebimento1.writeStringSync("\n");
  recebimento1.writeStringSync(codRecebidos.join(" | ") + " | ");
  recebimento1.closeSync();

  print(recebimentos.readAsStringSync());
}

void main() {
  List<dynamic> arquivos = pathClientes();
  File clientes = arquivos[0];
  File recebimentos = arquivos[1];
  List<dynamic> codRecebidos = [0505, 12.50, '12/12/2021', '12/12/2023', 2233];
  cadastrado(clientes, codRecebidos[4]);
  cadastrarRecebimentos( recebimentos, codRecebidos);

}
