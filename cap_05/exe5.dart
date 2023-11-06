//Faça um programa que mostre as tabuadas de 1 a 10.

void main() {
  for (int i = 0; i < 10; i++) {
    for (int j = 0; j <= 10; j++) {
      print("${i+1} * $j = ${(i+1) * j}");
    }
  }
}
