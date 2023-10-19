//Faça uma sub-rotina que receba um vetor X de 30 elementos inteiros como parâmetro e retorne 2 vetores A e B. 
//O vetor A deve conter os elementos de X que sejam maiores do que zero e o vetor B, os elementos menores ou iguais a zero.

import 'dart:math';

List<int> maiorZero(List<int> lista){
  List<int> listaMaiorZero = [];
  for(int i = 0; i < lista.length; i++){
    if(lista[i] > 0){
      listaMaiorZero.add(lista[i]);
    }
  }
  return listaMaiorZero;
}
List<int> menorIgualZero(List<int> lista){
  List<int> listaMenorIgualZero = [];
  for(int i = 0; i < lista.length; i++){
    if(lista[i] <= 0){
      listaMenorIgualZero.add(lista[i]);
    }
  }
  return listaMenorIgualZero;
}

void main(){
List<int> listinha = List.generate(30, (index) => Random().nextInt(201)-100);
print(listinha);
print("Lista maior que zero:");
print(maiorZero(listinha));
print("Lista menor ou igual a zero:");
print(menorIgualZero(listinha));

}


