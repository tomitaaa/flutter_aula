class Pessoa{
    String nome;
    double peso;
    double altura;
    Function imc;

Pessoa({required this.nome, required this.peso, required this.altura, required this.imc});

double imprimirIMC(){
    return imc();
}


}