class Aluno{
  int codigo;
  String nome;

  Aluno(this.codigo, this.nome);

  @override
  String toString() {
    return 'Aluno{codigo: $codigo, nome: $nome}';
  }
}