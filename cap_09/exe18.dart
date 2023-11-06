//Faça um programa que criptografe cada palavra de cada frase, substituindo por ? a última metade de seus caracteres.
//Exemplo:
//A aula é boa, mas poderia ser mais curta.
//? au?? ? b?? m?? pod???? s?? ma?? cu???.

dynamic cripto(String frase) {
  List<String> fraseList = frase.split(" ");
  List<String> palavraFinal = [];
  for (int i = 0; i < fraseList.length; i++) {
    int cont = (fraseList[i].length / 2).ceil();
    List<String> palavra = fraseList[i].split('');
    if(palavra.length == 1 || palavra.length%2 != 0){
      cont--;
    }
    for (int j = cont; j < palavra.length; j++) {
      palavra[j] = "?";
      print(palavra);
    }
    palavraFinal.add(palavra.join(''));
  }
  print(palavraFinal.join(' '));
}

void main() {
  String frase = "A aula é boa, mas poderia ser mais curta";
  cripto(frase);
}
