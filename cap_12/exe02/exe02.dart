//Defina uma classe Pessoa com os seguintes atributos nome e idade.Essa classe deve ter, também, um método para calcular a idade em meses.
//Carregue os atributos anteriores de uma pessoa, calcule e mostre.
//a idade da pessoa em meses
//a idade que a pessoa terá em 2050(outro método)


class Pessoa{
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  void calculaIdade(DateTime anoAtual){
    int idadeMeses = (anoAtual.year - idade) * 12 + (anoAtual.month - idade);
    print("A idade da pessoa em meses é $idadeMeses");
  }
  void calculaIdade2050(){
    int idade2050 = (2050 - DateTime.now().year+idade);
    print("A idade da pessoa em 2050 é $idade2050");
  }
}

void main(){
  Pessoa p1 = Pessoa("Gustavo", 21);
  p1.calculaIdade(DateTime.now());
  p1.calculaIdade2050();
}