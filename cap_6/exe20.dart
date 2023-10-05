// Faça um programa que leia um vetor com 50 posições para
// números inteiros e mostre somente os números positivos.

import 'dart:math';

void main(){
  List<int> vetor = List.generate(50, (_) => Random().nextInt(101) - 50);
  print(vetor);
  for(int i = 0; i < vetor.length; i++){
    if(vetor[i] > 0){
      print(vetor[i]);
    }
  }
}