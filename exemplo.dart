import 'dart:io';

class Pessoa {
  String nome;
  int idade;
  double peso;
  String cidade;
  String estado;

  Pessoa({
    required this.nome,
    required this.idade,
    required this.peso,
    required this.cidade,
    required this.estado,
  });

    verificaIdade() {
    while (idade <= 0) {
      print('Idade inválida, a idade não pode ser negativa, informe novamente:');
      idade = int.parse(stdin.readLineSync()!);
    }
  }

    verificaPeso() {
    while (peso <= 0) {
      print('Peso inválido, o peso não pode ser negativo, informe novamente:');
      peso = double.parse(stdin.readLineSync()!);
    }
  }

    exibirDados() {
    print('Nome: $nome');
    print('Idade: $idade');
    print('Peso: $peso');
    print('Cidade: $cidade');
    print('Estado: $estado');
  }
}

class Cadastro {
  String entradaTeclado(String mensagem) {
    print(mensagem);
    return stdin.readLineSync()!;
  }

  Pessoa Verificacao() {
    String nome = entradaTeclado('Informe o seu nome:');
    String cidade = entradaTeclado('Informe a sua cidade:');
    String estado = entradaTeclado('Informe o seu estado:');

    print('Informe a sua idade:');
    int idade = int.parse(stdin.readLineSync()!);
    Pessoa pessoa = Pessoa(
        nome: nome, idade: idade, peso: 0.0, cidade: cidade, estado: estado);
    pessoa.verificaIdade();

    print('Informe o seu peso:');
    double peso = double.parse(stdin.readLineSync()!);
    pessoa.peso = peso;
    pessoa.verificaPeso();

    return pessoa;
  }
}

void main() {
  Cadastro sistemaCadastro = Cadastro();
  Pessoa pessoa = sistemaCadastro.Verificacao();

  pessoa.exibirDados();
}


//nao permitir nao-numeros (string) em idade e peso
//nao permitir numeros nos campos string (nome, cidade e estado)
//e nao permitir por si só os nulos
