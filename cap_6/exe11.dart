// Faça um programa que receba 10 números inteiros e armazeneos em um vetor, calcule e mostre dois
// vetores resultantes, o primeiro com  os númeors pares e o segundo com os números ímpares
import 'dart:io';
void main(){
  List<int> vetor = [];
  List<int> par = [];
  List<int> impar = [];

  for(int i = 0; i < 10; i++){
    print("Digite o ${i+1}º número");
    vetor.add(int.parse(stdin.readLineSync() ?? '0'));
  }
  for(int i = 0; i < 10; i++){
    if(vetor[i] % 2 == 0){
      par.add(vetor[i]);
    }else{
      impar.add(vetor[i]);
    }
  }
  print("Os números pares são: $par");
  print("Os números ímpares são: $impar");
}