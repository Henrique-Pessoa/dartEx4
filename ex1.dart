class Animal{
  String nome;
  int idade;
  String cor;
  String raca;

  Animal(this.nome, this.idade, this.cor, this.raca);
}

class Passaro extends Animal implements Alimentar{
  Passaro(nome, idade, cor, raca,peso):super(nome, idade, cor, raca);

  void acordou(){
    print('Acordou');
  }

  void dormiu(){
    print("Dormiu");
  }

  @override
  void separarIgredientes(){
    print('Separar ingredientes');
  }
  
  @override
  void pegarTigel(){
    print('Pegar tigel');
  }

  @override
  void prepararComida(){
    print('Preparar comida');
  }

}

abstract class Alimentar {
  separarIgredientes();
  pegarTigel();
  prepararComida();
}


void main() {
  var p1 = Passaro('Paulo', 20, 'Branco', 'Cavalo', 10);
  p1.acordou();
  p1.dormiu();
  p1.pegarTigel();
  p1.prepararComida();
  p1.separarIgredientes();
}