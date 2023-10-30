//Faça um programa que altere um recebimento de um cliente, ou seja, o usuário informa o número do documento e o número do cliente faz as
//alterações desejadas
// Aproveitei para estudar sobre convenções de imports e organizei os imports de acordo com a convenção do dart
//Imports da biblioteca padrão do dart
import 'dart:io';

//Importas de pacotes externos

//Imports locais
import 'exe03.dart';

alterandoTodosOsRecebimentos(String
    numero, 
    String  valor, 
    String emissao,
    String vencimento,
    String codigo,
    List<dynamic> recebimentoInicial) {
    // Itera sobre a lista de recebimentos
    for(String data in recebimentoInicial){
      // Verifica se o número do cliente é igual ao número fornecido pelo usuário
      if (data.contains(numero)) {
        // Exclui o recebimento da lista
        //recebimento inicial recebe "valor | emissao | vencimento | codigo |"
        recebimentoInicial[recebimentoInicial.indexOf(data)] = "$numero | $valor | $emissao | $vencimento | $codigo |";
      }
    }
}
void preenchendoRecebimento(List<dynamic> recebimentoInicial, File recebimentos){
  //Apagando os dados dos arquivos
  recebimentos.writeAsStringSync("");
  //Preenchendo os arquivos com os dados atualizados
  RandomAccessFile recebimento1 = recebimentos.openSync(mode: FileMode.append);
  for (dynamic data in recebimentoInicial) {
    if(data != ""){ 
      recebimento1.writeStringSync("$data \n");
    }
  }
  recebimento1.closeSync();
  for(dynamic data in recebimentos.readAsStringSync().split("\n")){
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
  //Num_doc: | Valor_doc: | Data_emissao: | Data_vencimento: | Cod_Cli: |
  //505 | 12.5 | 12/12/2021 | 12/12/2023 | 2233 |
  print("Informe o número do documento: ");
  String numero = stdin.readLineSync()!;
  print("Informe o valor do documento: ");
  String valor = stdin.readLineSync()!;
  print("Informe a data de emissão: ");
  String emissao = stdin.readLineSync()!;
  print("Informe a data de vencimento: ");
  String vencimento = stdin.readLineSync()!;
  print("Informe o código do cliente: ");
  String codigo = stdin.readLineSync()!;
  alterandoTodosOsRecebimentos(
      numero, valor, emissao, vencimento, codigo, recebimentoInicial);
  preenchendoRecebimento(recebimentoInicial, recebimentos);
}
