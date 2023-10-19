//Faça um programa que receba uma frase e gere uma nova frase, duplicando cada caractere da frase digitada.
//Exemplo
//Frase: Programar é bom
//Frase: PPrrooggrraammaarr éé bboomm

dynamic duplicarPqSim(String frase) {
  List<String> listfrase = frase.split('');
  List<String> listfrasefinal = [];
   
  for (String item in listfrase) {
    listfrasefinal.add(item);
    listfrasefinal.add(item);
  }
  return listfrasefinal.join('');
}

void main() {
  String frase = "Programar é bom";
  print(duplicarPqSim(frase));
}
