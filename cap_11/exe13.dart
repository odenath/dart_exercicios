//Faça um programa para:
//Cadastrar as estações climáticas, por exemplo, primavera-versão e outono-inverno.
//cadastrar os estilistas
//Cadastrar as roupas.
//Mostrar um relatório de todas as roupas de determinada estação, informando, inclusive, o nome do estilista que as desenhou.

import 'dart:io';

dynamic pathModa() {
  String pathEstacoes = "D:\\flutter-exercises\\estacao.txt";
  String pathEstilistas = "D:\\flutter-exercises\\estilista.txt";
  String pathRoupas = "D:\\flutter-exercises\\roupa.txt";
  File estacoes = File(pathEstacoes);
  File estilistas = File(pathEstilistas);
  File roupas = File(pathRoupas);
  return [estacoes, estilistas, roupas];
}

void main() {
  File estacoes = pathModa()[0];
  File estilistas = pathModa()[1];
  File roupas = pathModa()[2];

  List<String> estacoesList = estacoes.readAsLinesSync();
  List<String> estilistasList = estilistas.readAsLinesSync();
  List<String> roupasList = roupas.readAsLinesSync();

  print("Digite a estação que deseja ver as roupas (vai de 1 a 4): ");
  String estacaoNumero = stdin.readLineSync()!;

  for (String estacao in estacoesList) {
    if (estacao.startsWith(estacaoNumero + ",")) {
      print("A estação escolhida foi a ${estacao.split(",")[1]}");
      break;
    }
  }

  roupasList.forEach((element) {
    if (element.split(",")[3] == estacaoNumero) {
      int indexEstilista = int.parse(element.split(",")[2]);
      for (String estilistaInfo in estilistasList) {
        if (estilistaInfo.startsWith(indexEstilista.toString() + ",")) {
          print("A roupa ${element.split(",")[1]} foi desenhada pelo estilista ${estilistaInfo.split(",")[1]}");
          break;
        }
      }
    }
  });
}
