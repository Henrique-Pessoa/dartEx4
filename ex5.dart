abstract class Automoveis{
  String nome;
  String cor;
  int ano;


  Automoveis(this.nome, this.cor, this.ano);

}


class Carro extends Automoveis{
  Carro(nome,cor,ano):super(nome,cor,ano);
  void cinto(){
    print("Cinto");
  }
  void ligar(){
    print("Ligar");
  }
  void desligar(){
    print("Desligar");
  }
  void dirigir(){
    print("Dirigir");
  }
}


void main(){
  Carro carro = new Carro("Fusca", "Azul", 2020);
  carro.cinto();
  carro.ligar();
  carro.desligar();
  carro.dirigir();
}

