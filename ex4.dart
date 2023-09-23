class Pessoa{
  String nome;
  int idade;

  
  
  void mostrarInfo(){
    print("Nome: $nome");
    print("Idade: $idade");
  }

  void setNome(String nome){
    this.nome = nome;
  }
  
  void setIdade(int idade){
    this.idade = idade;
  }

  Pessoa(this.nome,this.idade);
}

void main(){
  Pessoa p1 = new Pessoa("Pedro", 25);
  p1.mostrarInfo();
  p1.setNome("Maria");
  p1.setIdade(30);
  p1.mostrarInfo();
}