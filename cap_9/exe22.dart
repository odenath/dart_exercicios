// Considere uma string composta por várias sub-sequências, por exemplo, cccccaaaaaaxkkkkkkkkk.
//A menor subsequência é a letra x, com apenas 1 elemento; a maior subsequencia é a da letra d, com 9 elemtnos
//Faça um programa para ler uma string e mostrar qual é a letra que mais ocorre e seu tamanho
// import 'dart:math';

import 'dart:math';

void main() {
  String frase = List.generate(
      100, (index) => 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'[Random().nextInt(26)]).join();
  print(frase);
  List<String> letras = frase.split('');
  letras.sort();
  int cont = 0;
  print(letras);
 for (int k = 0; k < letras.length-1; k++) {
  if(letras[k]==letras[k+1]){
    cont++;
    if(k == letras.length-2){
      print('A letra ${letras[k]} aparece ${cont+1} vezes');
    }
  }
  else{
    print('A letra ${letras[k]} aparece ${cont+1} vezes');
    cont=0;
  }
}

}

