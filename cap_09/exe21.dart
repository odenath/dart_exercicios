//Faça um programa que receba uma frase e realize a criptografia dela, trocando a primeira e a última palavra de lugar
//ex:
//ESTRELAS E LUA ESTÃO NO CÉU
//CÉU E LUZ ESTÃO NAS ESTRELAS;


void main(){
  String frase = "ESTRELAS E LUA ESTÃO NO CÉU";
  List<String> lista = frase.split(" ");
  String primeiraPalavra = lista[0];
  String ultimaPalavra = lista[lista.length - 1];
  lista[0] = ultimaPalavra;
  lista[lista.length - 1] = primeiraPalavra;
  print(lista.join(" "));
}