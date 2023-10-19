//Crie uma sub-rotina que gere e mostre os dez números primos acima de 100; 101 103 107 113

void primosAcima100() {
  List<int> matrix = [];
  int base = 101;
  while (matrix.length < 10) {
    
    int divisor = 0;
    for (int i = 1; i <= base; i++) {
      if (base % i == 0) {
        // print(i);
        divisor++;
      }
    }
    if (divisor == 2) {
      matrix.add(base);
      print(matrix);    
    }
    base++;
    divisor = 0;
  
  }
}

void main() {
  primosAcima100();
}
