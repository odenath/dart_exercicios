//Faça um programa que altere o cadastro de clientes do Exercício 1. O usuário deve informar o código do cliente que será alterado.
import 'dart:io';
import 'exe03.dart';



validarCodigo(dynamic codigo) {
  if (codigo is! int) {
    throw ArgumentError("O código do cliente deve ser um número inteiro.");
  }
}

dynamic alterandoOCliente(
  int  codigo,
  String novoCodigo,
  String novoNome,
  String novoEndereco,
  String novoNome2,
  List<dynamic> clienteInicial,
) {
  validarCodigo(codigo);
  //novo cliente recebe codigo, nome, endereco, nome2, separado por " | " tipo assim: 2233 | gustavo | rua maria | Isabela | 
  String novocliente = "$novoCodigo | $novoNome | $novoEndereco | $novoNome2 | ";

 int index = clienteInicial.indexWhere((cliente) => cliente.contains(codigo.toString()));
  if (index != -1) { // Verifica se o código foi encontrado
    clienteInicial[index] = novocliente;
  } else {
    print("Cliente não cadastrado");
  }

  for(dynamic data in clienteInicial){
    print(data);
  }

}

void preenchendoCliente(List<dynamic> clienteInicial, File clientes){
  //Apagando os dados dos arquivos
  clientes.writeAsStringSync("");
  //Preenchendo os arquivos com os dados atualizados
  RandomAccessFile cliente1 = clientes.openSync(mode: FileMode.append);
  for (dynamic data in clienteInicial) {
    if(data != ""){ 
      cliente1.writeStringSync("$data \n");
    }
  }
  cliente1.closeSync();
  for(dynamic data in clientes.readAsStringSync().split("\n")){
    print(data);
  }
}
void main() {
  List<dynamic> arquivos = pathClientes();
  File clientes = arquivos[0];
  File recebimentos = arquivos[1];
  List<dynamic> clienteInicial = clientes.readAsStringSync().split("\n");
  List<dynamic> recebimentoInicial =
      recebimentos.readAsStringSync().split("\n");
  for (dynamic data in clienteInicial) {
    print(data);
  }
  for (dynamic data in recebimentoInicial) {
    print(data);
  }
  print("Digite o código do cliente que deseja alterar: ");
  int codigo = int.parse(stdin.readLineSync()!);
  print("Digite o novo código do cliente: ");
  String novoCodigo = stdin.readLineSync()!;
  print("Digite o novo nome do cliente: ");
  String novoNome = stdin.readLineSync()!;
  print("Digite o novo endereço do cliente: ");
  String novoEndereco = stdin.readLineSync()!;
  print("Digite o nome2 do cliente: ");
  String novoNome2 = stdin.readLineSync()!;
  alterandoOCliente(codigo, novoCodigo, novoNome, novoEndereco, novoNome2,
      clienteInicial);
  preenchendoCliente(clienteInicial, clientes);
}
