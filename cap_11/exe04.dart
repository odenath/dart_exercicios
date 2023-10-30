//Faça um programa que exclua clientes e, consequentemente, todos os seus recebimentos,
// dos arquivos criados no ex 1;

import 'exe03.dart';
import 'dart:io';

dynamic removendo(String numero, List<dynamic> clienteInicial,List<dynamic> recebimentoInicial) {

 
  // Itera sobre a lista de recebimentos
  for (int i = 0; i < recebimentoInicial.length; i++) {
    // Verifica se o número do cliente é igual ao número fornecido pelo usuário
    if (recebimentoInicial[i].contains(numero)) {
      // Exclui o recebimento da lista
      recebimentoInicial.removeAt(i);
    }
  }
  // Itera sobre a lista de clientes
  for (int i = 0; i < clienteInicial.length; i++) {
    // Verifica se o número do cliente é igual ao número fornecido pelo usuário
    if (clienteInicial[i].contains(numero)) {
      // Exclui o cliente da lista
      clienteInicial.removeAt(i);
    }
  }

  return [clienteInicial, recebimentoInicial];
}

dynamic preenchendo(List<dynamic> clienteInicial,List<dynamic> recebimentoInicial, File clientes, File recebimentos ){
  //Apagando os dados dos arquivos
  clientes.writeAsStringSync("");
  recebimentos.writeAsStringSync("");
  //Preenchendo os arquivos com os dados atualizados
  RandomAccessFile cliente1 = clientes.openSync(mode: FileMode.append);
  for (dynamic data in clienteInicial) {
    if(data != ""){ 
      cliente1.writeStringSync("$data \n");
    }
  }
  cliente1.closeSync();
  //Preenchendo os arquivos com os dados atualizados
  RandomAccessFile recebimento1 = recebimentos.openSync(mode: FileMode.append);
  for (dynamic data in recebimentoInicial) {
    if(data != ""){ 
      recebimento1.writeStringSync("$data \n");
    }
  }

  return [clientes, recebimentos];
}


void main() {
  List<dynamic> arquivos = pathClientes();
  File clientes = arquivos[0];
  File recebimentos = arquivos[1];
  print(clientes.readAsStringSync());
  print(recebimentos.readAsStringSync());

  dynamic clienteInicial = clientes.readAsLinesSync();
  dynamic recebimentoInicial = recebimentos.readAsLinesSync();
  print(clienteInicial);
  print("---------------------------------------------------------------------------------");
  print(recebimentoInicial);
  for(dynamic i in clienteInicial){
    print(i.runtimeType);
  }

  print("Digite o número do cliente: ");
  String numero = stdin.readLineSync()!;
  List<dynamic> resultadoRemovendo = removendo(numero, clienteInicial, recebimentoInicial);
  print(resultadoRemovendo[0]);
  print("---------------------------------------------------------------------------------");
  print(resultadoRemovendo[1]);
  preenchendo( resultadoRemovendo[0], resultadoRemovendo[1], clientes, recebimentos);
  print(clientes.readAsStringSync());
  print("---------------------------------------------------------------------------------");
  print(recebimentos.readAsStringSync());
}
