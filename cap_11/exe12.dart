//Faça um programa para criar os arquivos a seguir:
//Estlista(Cod_Estilista, Nome_Estilista, Salario).
//Roupa(Cod_Roupa, Descricao_Roupa, Cod_Estilista, Cod_Estacao, Ano).
//Estacao(Cod_Estacao, Nome_Estacao).

import 'dart:io';


void main(){

  var estilista = File('estilista.txt');
  var roupa = File('roupa.txt');
  var estacao = File('estacao.txt');


   var gustavo = File('D:\\flutter-exercises\\cap_11\\gustavo.txt');

  // Cria o arquivo, se ele não existir
  if (!gustavo.existsSync()) {
    gustavo.createSync();
  }

  // Escreve algo no arquivo
  gustavo.writeAsStringSync('Gustavo é o melhor!');

  estilista.writeAsStringSync('Cod_Estilista, Nome_Estilista, Salario\n');
  roupa.writeAsStringSync('Cod_Roupa, Descricao_Roupa, Cod_Estilista, Cod_Estacao, Ano\n');
  estacao.writeAsStringSync('Cod_Estacao, Nome_Estacao\n');

  estilista.writeAsStringSync('1, João, 1000\n', mode: FileMode.append);
  estilista.writeAsStringSync('2, Maria, 2000\n', mode: FileMode.append);
  estilista.writeAsStringSync('3, José, 3000\n', mode: FileMode.append);

  roupa.writeAsStringSync('1, Camisa, 1, 1, 2020\n', mode: FileMode.append);
  roupa.writeAsStringSync('2, Calça, 2, 2, 2020\n', mode: FileMode.append);
  roupa.writeAsStringSync('3, Blusa, 3, 3, 2020\n', mode: FileMode.append);

  estacao.writeAsStringSync('1, Verão\n', mode: FileMode.append);
  estacao.writeAsStringSync('2, Inverno\n', mode: FileMode.append);
  estacao.writeAsStringSync('3, Outono\n', mode: FileMode.append);
  estacao.writeAsStringSync('4, Primavera\n', mode: FileMode.append);

  estilista.readAsString().then((String contents) {
    print(contents);
  });

  roupa.readAsString().then((String contents) {
    print(contents);
  });

  estacao.readAsString().then((String contents) {
    print(contents);
  });
}