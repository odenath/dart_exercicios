//Faça um programa que apresente o seguinte menu de opções:
//1- criar
//2- incluir
//3- mostrar
//4- sair
//digite a opção desejada:
//
//Para a opção 1: criar arquivo com os campos : numero, nome, nota1, nota2.
//Para a opção 2: incluir dados no arquivo criado(não pode incluir numero repetido).
//Para a opção 3: mostrar os dados do arquivo e calcular
import 'dart:io';

void inserindo(File arquivo){
  print("Digite o número: ");
  int numero = int.parse(stdin.readLineSync() ?? '0');
  if(arquivo.readAsStringSync().contains(numero.toString())){
    print("Número já existe");
  return; }
  print("Digite o nome: ");
  String nome = stdin.readLineSync() ?? '';
  print("Digite a nota 1: ");
  double nota1 = double.parse(stdin.readLineSync() ?? '0');
  print("Digite a nota 2: ");
  double nota2 = double.parse(stdin.readLineSync() ?? '0');
  arquivo.writeAsStringSync('$numero, $nome, $nota1, $nota2\n', mode: FileMode.append);
  print("Obrigado!");
}

void mostrando(File arquivo){
  //somar as notas e mostrar a média
 List<String> arquivoList = arquivo.readAsLinesSync();

  for (String i in arquivoList) {
    int numero = int.parse(i.split(", ")[0]);
    String nome = i.split(", ")[1];
    double nota1 = double.parse(i.split(", ")[2]);
    double nota2 = double.parse(i.split(", ")[3]);
    double media = (nota1 + nota2) / 2;
    print("O aluno de número $numero, $nome, tem nota1: $nota1 nota2: $nota2 média $media");
  }
 
}

void main() {
  var opcao = 0;

  while (opcao != 4) {
    print('1- criar');
    print('2- incluir');
    print('3- mostrar');
    print('4- sair');
    print('digite a opção desejada:');
    opcao = int.parse(stdin.readLineSync() ?? '0');

    File arquivo = File('D:\\flutter-exercises\\cap_11\\arquivo.txt');

    switch (opcao) {
      case 1:
        // Cria o arquivo, se ele não existir
        if (!arquivo.existsSync()) {
          arquivo.createSync();
        }

        break;
      case 2:
        inserindo(arquivo);
        break;
      case 3:
        mostrando(arquivo);
        break;
      case 4:
        print('Até logo!');
        break;
      default:
        print('opção inválida');
    }
  }
}
