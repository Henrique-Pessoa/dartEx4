class Produto{
  String nome;
  double preco;
  int quantidade;

  String get nomeProduto{
    return nome;
  }

  double get precoProduto{
    return preco;
  }

  int get quantidadeProduto{
    return quantidade;
  }

  void infoProduto(){
    print("Nome: $nome");
    print("Preço: $preco");
    print("Quantidade: $quantidade");
  }

  Produto(this.nome, this.preco, this.quantidade);
}


void main(){
  var p1 = new Produto("Camiseta", 100, 10);
  p1.infoProduto();
}

