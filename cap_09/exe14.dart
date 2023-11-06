//Faça um programa que receba uma frase e converta as vogais de suas palavras p/ maiúsculo e as consoantes p/ minúsculo.

dynamic conversorFinal(String frase){
  List<String> lista = frase.split('');
  List<String> vogais = ['a', 'e', 'i', 'o', 'u'];
  for(int i = 0; i < lista.length; i++){
    if(vogais.contains(lista[i].toLowerCase())){
      lista[i] = lista[i].toUpperCase();
    }else{
      lista[i] = lista[i].toLowerCase();
    }
  }
  return print(lista.join(''));
}



void main(){

  String frase = "Ola mundo";
  conversorFinal(frase);




}