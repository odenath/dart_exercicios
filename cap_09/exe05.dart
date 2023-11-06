//Faça um programa que receba duas cadeiras de caracteres e verifique se a primeira cadeia digitada é permutação da segunda cadeia,
//ou seja, se todos os caracteres da primeira cadeia estão presentes na segunda cadeia mesmo que em posições diferentes
//string é do mesmo tamanho

dynamic contem(String cadeia1, String cadeia2) {
  bool certo = true;
  List<String> lista1 = cadeia1.split('');
  List<String> lista2 = cadeia2.split('');
  lista1.sort();
  lista2.sort();
  if (lista1.length != lista2.length) {
    certo = false;
    return certo;
  }
  for (int i = 0; i < lista1.length; i++) {
    if (lista1[i] == lista2[i]) {
      certo = true;
    } else {
      certo = false;
      break;
    }
  }
  return certo;
}

void main() {
  String cadeia1 = 'abcc';
  String cadeia2 = 'bcac';
  print(contem(cadeia1, cadeia2));
}
