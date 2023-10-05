// void main() {
//   // Comentário de uma linha
//   int a = 2;
//   double b = 3.1314;
//   bool estaChovendo = true;
//   var c = "Olá Dart!";
//   num d = 4;
//   List lista1 = ["casa", "sapato", "bola"];
//   Map map1 = {"casa": "casa1", "bola": "bola1"};

//   d += a + b;
//   print(c +
//       d.toString() +
//       estaChovendo.toString() +
//       lista1.toString() +
//       map1.toString());

//   print("Hello World");

//   if (estaChovendo == true) {
//     print("Está chovendo");
//   } else {
//     print("Não está chovendo");
//   }
//   int canal = 2;
//   switch (canal) {
//     case 1:
//       print("canal escolhido foi 1 ");
//       break;
//     case 2:
//       print("canal escolhido foi 2");
//       break;
//     default:
//       print("Agiota online");
//   }
//   for (int i = 0; i < 10; i++) {
//     print(i);
//   }
//   bool ativo = false;
//   while (ativo == false) {
//     print("error");
//     break;
//   }
//   //length
// }

// class Produto {
//   late String nome;
//   late double preco;
//   Produto(String nome, double preco) {
//     this.nome = nome;
//     this.preco = preco;
//   }
// }

// void main() {
//   Produto p1 = Produto("vassoura", 10.5);
//   List<Produto> produtos = [p1];
//   print(produtos[0].nome);
// }

class ContaCorrente {
  //atributos
  late double saldo;
  late String nome;
  late int codigo;

  ContaCorrente(double saldo, String nome, int codigo) {
    this.saldo = saldo;
    this.nome = nome;
    this.codigo = codigo;
  }
  void sacar(double valor) {
    //validação simples
    if (this.saldo >= valor) {
      this.saldo = this.saldo - valor;
      print("saque efetuado com sucesso");
    } else {
      print("não foi possível efetuar a operação");
    }
  }
}

class ContaPoupanca extends ContaCorrente {
  late int cpf;
  @override
  void sacar(double valor) {
    //validação simples
    if (this.saldo >= valor) {
      this.saldo = this.saldo - valor;
      print("saques efetuado com sucesso");
    } else {
      print("não foi possível efetuar as operaçôes");
    }
  }
  ContaPoupanca(double saldo, String nome,int codigo, int cpf) : super(saldo, nome, codigo);
}

class Configuracoes {
  static String nome = "Gustavo";
  static int idade = 20;
  static void imprimirNome() {
    print(nome);
  }
}
abstract class Animal {
  String nome;
  Animal(this.nome);
  void comer();
  void fazerSom();
}

void main() {
  ContaCorrente conta1 = ContaCorrente(10, "Gustavo", 256325);
  print(conta1.codigo);
  conta1.sacar(2);
  ContaPoupanca c1 = ContaPoupanca(10.1, "Gustavo", 256325, 123456789);
  c1.sacar(10);
  print(Configuracoes.idade);


}
// void main() {
//     var matrix = [
//       [0,0],[1,0],[2,0],[3,0], 
//       [1,0],[1,1],[1,2],[1,3],
//       [2,0],[2,1],[2,2],[2,3],
//       [3,0],[3,1],[3,2],[3,3] 
//     ];

//     for (var i =0; i < matrix.length; i++) {
//        if(i  == (matrix.length -1)) {
//         break;
//        }
       
//        if(isEqual(matrix[i])) {
//           print(matrix[i + 1]);
//        }
//     }
// }

// bool isEqual(List<int>elemento) {
//     return elemento[0] == elemento[1];
// }
