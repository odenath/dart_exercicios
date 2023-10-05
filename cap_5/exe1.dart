//Faça um programa que leia 5 grupos de 4 valores(A,B,C,D)
//Mostre na ordem lida
//Organize na ordem crescente e decrescente

import 'dart:io';

void main() {
  List<List<int>> listinha = [];

  for (int i = 0; i < 5; i++) {
    List<int> grupo = [];
    for (int j = 0; j < 4; j++) {
      print("Digite Números inteiros número da lista ${i+1} número ${j + 1}");
      grupo.add(int.parse(stdin.readLineSync() ?? '0'));
      print(grupo);
    }
    listinha.add(grupo);
  }
  print("lista na ordem lida:");
  for (List<int> grupo in listinha) {
    print(grupo);
  }
 // Organizar na ordem crescente e mostrar
  print("\nGrupos na ordem crescente:");
  listinha.sort((a, b) => a[0].compareTo(b[0]));
  for (List<int> grupo in listinha) {
    print(grupo);
  }

  // Organizar na ordem decrescente e mostrar
  print("\nGrupos na ordem decrescente:");
  listinha.sort((a, b) => b[0].compareTo(a[0]));
  for (List<int> grupo in listinha) {
    print(grupo);
  }



  

  // listinha.sort((a, b) => -a.compareTo(b));
  // print(listinha);
}








































//   List<List<int>> grupos = [];

//   for (int i = 0; i < 5; i++) {
//     List<int> grupo = [];
//     for (int j = 0; j < 4; j++) {
//       print("Digite o valor ${j + 1} do grupo ${i + 1}:");
//       int valor = int.parse(stdin.readLineSync() ?? '0');
//       grupo.add(valor);
//     }
//     grupos.add(grupo);
//   }

//   // Mostrar na ordem lida
//   
 

 
// }
