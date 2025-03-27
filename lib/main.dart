import dart.io;

double calcularImc(double altura, double peso){
    return peso / (altura * altura);
}

void main() {

    print('nome: ');
    var nome = stdin.readLineSync()!;

    print('peso: ');
    var peso = double.parse(stdin.readLineSync()!);
    var pessoa = Pessoa(altura: 1,95, peso: 60.0, nome: 'Hélio', imc: calcularImc(1.95, 60.0) );,

    var pessoa2 = Pessoa(peso, nome);

    // pessoa.nome = 'nome da pessoa';

    print('pessoa: ${pessoa.nome} ${pessoa.peso}');



    
}