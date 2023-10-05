//Uma companhia de teatro deseja montar uma série de espetáculos.
//A direção calcula que, a 5,00 o ingresso, serão vendidos 120 ingressos
//As despesas serão de 200.
//Diminuindo em 0.5 o preço espera-se que as vendas aumentem em 26 ingressos
//Faça um programa que escreva uma tabela de valores de lucro esperado em -
//função do preço do ingresso, fazendo variar este preço de 5,00 a 1,00 de
// 0,5 em 0,5
//Escreva ainda, para cada novo preço de ingresso, o lucro máximo esperado
//o preço do ingresso
//a quantidade de ingressos vendidos para a obtenção desse lucro
// //pag 152

// 5 * 120     despesas 200
// 4.5 * 146   despesas 200


void main() {
  double precoIngresso = 5;
  int ingressosVendidos = 120;
  for (int i = 9; i >= 1; i--) {
    print("Com o preço do ingresso em $precoIngresso lucro esperado é de ${precoIngresso * ingressosVendidos - 200}");
    precoIngresso -= 0.5;
    ingressosVendidos += 26;
  }
}

