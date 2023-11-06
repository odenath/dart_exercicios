//Faça um programa que receba uma frase e faça a criptografia dela, substituindo as vogais pelos seguintes números a1 e2 i3 o4 u5

void main(){
  String frase = "Aula com bola";
  List<String> lista = frase.split('');
  List<String> vogais = ['a', 'e', 'i', 'o', 'u'];
  List<String> numeros = ['1', '2', '3', '4', '5'];
  for(int i = 0; i < lista.length; i++){
    if(vogais.contains(lista[i].toLowerCase())){
      lista[i] = numeros[vogais.indexOf(lista[i].toLowerCase())];
    }
  }
  print(lista.join(''));
}