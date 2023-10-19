// //Faça um programa que receba uma frase e, a cada duas palavras dela, realize uma criptografia, ou seja:
// //a primeira letra da primeira frase concatenada com a última letra da segunda palavra, concatenada com a segunda letra da primeira palavra
// //e com a penúiltima letra da segunda palkavra, e assim por diante. NO caso de quantidade de palavras ímpares, a última palavra deve ser
// //invertida
// EX:
// FRASE: Aula com bola
// SAÍDA: Amuolca alon
// FRASE: Casa com janelas coloridas
// SAÍDA: Cmaosca jsaandeilraosloc

dynamic criptografando(String frase) {
  List<String> listinha = frase.split(" ");
  String ultimaPalavra = "";
  String palavraCriptografada = "";
  if (listinha.length % 2 != 0) {
    ultimaPalavra = listinha[listinha.length - 1];
    listinha.removeAt(listinha.length - 1);
    ultimaPalavra = ultimaPalavra.split('').reversed.join('');
    print(ultimaPalavra);
  }
  if (listinha.length % 2 == 0) {
    print(listinha);
    for (int i = 0; i < listinha.length; i++) {
      print("1º for");
      if (i % 2 != 0 && i != 0) {
        String primeiraPalavra = listinha[i - 1];
        String segundaPalavra = listinha[i];
        List<String> primeiraPalavraList = primeiraPalavra.split('');
        List<String> segundaPalavraList = segundaPalavra.split('');
        int maior = segundaPalavra.length > primeiraPalavra.length
            ? segundaPalavra.length
            : primeiraPalavra.length;
        for (int j = 0; j < maior; j++) {
          if (j < primeiraPalavra.length) {
            palavraCriptografada += primeiraPalavraList[j];
          }
          if (j < segundaPalavra.length) {
            palavraCriptografada +=
                segundaPalavraList[segundaPalavra.length - 1 - j];
          }
        }
        palavraCriptografada += " ";
      }
    }
  }
  palavraCriptografada+= ultimaPalavra;
  print(palavraCriptografada);
}

void main() {
  String frase = "Aula com bola";
  String frase2 = "Casa com janelas coloridas";
  criptografando(frase);
  criptografando(frase2);
}
