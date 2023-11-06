// l- Defina uma classe CARRO com os seguintes atributos: placa e ano de fabricação.
// Essa classe deve ter também um método para calcular o imposto.
// Faça o cadastro de cinco carros, calcule e mostre:
//a) o imposto a ser pago por cada carro, sabendo-se que o cálculo é realizado assim:
//
// No ano de fabricação, o carro paga R$ 500,00 de imposto.
// A cada ano de uso, o imposto é reduzido em R$ 100,00.
// Contudo, o valor mínimo a ser pago pelo carro é de R$ 100,00 até o carro atingir o 10º ano de uso,
//quando, então, não precisará mais pagar imposto.
// As tabelas a seguir mostram exemplos de dois carros, um fabricado em 2012 e outro fabricado em 2009.
//Supondo que o ano atual é 2012, estão dispostos o valor dos impostos a serem pagos até 2021.
//
// - Carro fabricado em 2012          ||       Carro fabricado em 2009
// Ano Atual |  Valor do imposto      ||      Ano Atual |  Valor do imposto
// 2012      |    RS 500,00           ||       2012     |   RS 200,00
// 2013      |    R$ 400,00           ||       2013     |   R$ 100,00
// 2014      |    R$ 300,00           ||       2014     |   R$ 100,00
// 2015      |    R$ 200,00           ||       2015     |   R$ 100,00
// 2016      |    R$ 100,00           ||       2016     |   R$ 100,00
// 2017      |    R$ 100,00           ||       2017     |   RS 100,00
// 2018      |    R$ 100,00           ||       2018     |   R$ 0,00
// 2019      |    R$ 100,00           ||       2019     |   R$ 0,00
// 2020      |    R$ 100,00           ||       2020     |   R$ 0,00
// 2021      |    R$ 0,00             ||       2021     |   R$ 0,00
//
// Para cálculo do imposto, o usuário deverá informar o ano atual.
// b) o total dos impostos, ou seja, a soma dos impostos de todos os carros (outro método).
// c) a quantidade de carros que não pagam impostos (outro método).


class Carro {
  String placa;
  DateTime anoFabricacao;

  Carro(this.placa, this.anoFabricacao);

  void calculaImposto(DateTime anoAtual) {
    int ano = anoAtual.year - anoFabricacao.year;
    int imposto = 500;
    int totalImposto = 0;
    if (ano > 10) {
      print("O carro não paga imposto");
    } else {
      for (int i = 0; i < ano; i++) {
        totalImposto += imposto;
        print(
            "O carro pagará $imposto de imposto no ano ${anoFabricacao.year + i}");
        if (imposto > 100) {
          imposto -= 100;
        } else {
          imposto = 0;
        }
      }
    }
    print("O total de imposto é $totalImposto");
  }
}

void main() {
  Carro c1 = Carro("a1b2g3", DateTime(2012));
  Carro c2 = Carro("a1b2g4", DateTime(2009));
  Carro c3 = Carro("a1b2g5", DateTime(2010));
  Carro c4 = Carro("a1b2g6", DateTime(2011));
  Carro c5 = Carro("a1b2g7", DateTime(2012));

  c1.calculaImposto(DateTime(2021));
  c2.calculaImposto(DateTime(2022));
  c3.calculaImposto(DateTime(2023));
  c4.calculaImposto(DateTime(2024));
  c5.calculaImposto(DateTime(2025));

  //queria ter criado uma função para calcular a qtd de carros isentos dentro da classe, mas n sei exatamente como fazer então vamos fazer deste jeito
  int qtdCarrosIsentos = 0;
  List<Carro> carros = [c1, c2, c3, c4, c5];

  for (Carro carro in carros) {
    int ano = DateTime.now().year - carro.anoFabricacao.year;
    if (ano > 10) {
      qtdCarrosIsentos++;
    }
  }
  print("A quantidade de carros isentos é $qtdCarrosIsentos");
}
