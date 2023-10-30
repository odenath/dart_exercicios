// Faça um programa para cadastrar clientes no arquivo criado no Ex 1;
// Ideias e apenas ideias podem iluminar a escuridão!
import 'dart:io';

void main() {
  String pathClientes =
      'D:\\flutter-exercises\\clientes.txt'; // Caminho absoluto
  File clientes = File(pathClientes);

  List<dynamic> codCli = [2233, "gustavo", "rua maria", "Isabela"];
  RandomAccessFile cliente1 = clientes.openSync(mode: FileMode.append);
  cliente1.writeStringSync("\n");
  cliente1.writeStringSync(codCli.join(" | ") + " | ");
  cliente1.closeSync();

  print(clientes.readAsStringSync());
}


























// void main() {
//   String pathClientes = 'D:\\flutter-exercises\\clientes.txt'; // Caminho absoluto
//   String pathRecebimentos = 'D:\\flutter-exercises\\recebimentos.txt'; // Caminho absoluto

//   File clientes = File(pathClientes);
//   File recebimentos = File(pathRecebimentos);

//   List<dynamic> codCli = [2233, "gustavo", "rua maria", "Isabela"];

//   // Abre o arquivo de clientes para escrita e escreve os dados um abaixo do outro
//   RandomAccessFile cliente1 = clientes.openSync(mode: FileMode.append);
//   for (dynamic data in codCli) {
//     cliente1.writeStringSync("$data | ");
//   }
//   cliente1.closeSync();

//   print(clientes.readAsStringSync());
// }



















// import 'dart:io';

// void main() {
//   File clientes = File('clientes.txt');
//   File recebimentos = File('recebimentos.txt');

//   String codCli = 'gustavo';

//   // Para o arquivo "clientes.txt"
//   String conteudoClientes = clientes.readAsStringSync();
//   String novoConteudoClientes = conteudoClientes.split('\n').map((linha) {
//     return '$linha${codCli};';
//   }).join('\n');
//   clientes.writeAsStringSync(novoConteudoClientes);

//   // Para o arquivo "recebimentos.txt"
//   String conteudoRecebimentos = recebimentos.readAsStringSync();
//   String novoConteudoRecebimentos =
//       conteudoRecebimentos.split('\n').map((linha) {
//     return '$linha;${codCli}';
//   }).join('\n');
//   recebimentos.writeAsStringSync(novoConteudoRecebimentos);
// }
