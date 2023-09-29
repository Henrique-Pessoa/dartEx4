abstract class MaquinaIndustrial {
  String nome;
  double potencia;
  bool status;

  MaquinaIndustrial(this.nome, this.potencia, this.status);

  void ligar();
  void desligar();
}

class Prensa extends MaquinaIndustrial {
  double pressaoEmToneladas;

  Prensa(String nome, double potencia, bool status, this.pressaoEmToneladas)
      : super(nome, potencia, status);

  @override
  void ligar() {
    print('$nome ligada. Pressão: $pressaoEmToneladas toneladas.');
  }

  @override
  void desligar() {
    print('$nome desligada.');
  }
}

class RoboSolda extends MaquinaIndustrial {
  String tipoDeSolda;

  RoboSolda(String nome, double potencia, bool status, this.tipoDeSolda)
      : super(nome, potencia, status);

  @override
  void ligar() {
    print('$nome ligado. Tipo de solda: $tipoDeSolda.');
  }

  @override
  void desligar() {
    print('$nome desligado.');
  }
}

class Transportador extends MaquinaIndustrial {
  double velocidade; // m/s

  Transportador(String nome, double potencia, bool status, this.velocidade)
      : super(nome, potencia, status);

  @override
  void ligar() {
    print('$nome ligado. Velocidade: $velocidade m/s.');
  }

  @override
  void desligar() {
    print('$nome desligado.');
  }
}

class FornecedorDeEnergia {
  double energiaDisponivel;

  FornecedorDeEnergia(this.energiaDisponivel);

  void fornecerEnergia(MaquinaIndustrial maquina) {
    if (energiaDisponivel >= maquina.potencia) {
      maquina.ligar();
      energiaDisponivel -= maquina.potencia;
      print('Máquina ligada. Energia restante: $energiaDisponivel kW');
    } else {
      print('Energia insuficiente para ligar a máquina.');
    }
  }
}

void main() {
  Prensa prensa = Prensa('Prensa 1', 10.0, false, 100.0);
  RoboSolda roboSolda = RoboSolda('Robô de Solda 1', 5.0, false, 'MIG');
  Transportador transportador =
      Transportador('Transportador 1', 2.0, false, 1.5);

  prensa.ligar();
  prensa.desligar();

  roboSolda.ligar();
  roboSolda.desligar();

  transportador.ligar();
  transportador.desligar();

  List<MaquinaIndustrial> maquinas = [prensa, roboSolda, transportador];

  for (var maquina in maquinas) {
    print(
        'Nome: ${maquina.nome}, Potência: ${maquina.potencia}, Status: ${maquina.status ? "Ligada" : "Desligada"}');
  }

  // Fornecedor de Energia
  FornecedorDeEnergia fornecedor = FornecedorDeEnergia(20.0);
  fornecedor.fornecerEnergia(prensa);
  fornecedor.fornecerEnergia(roboSolda);
}
