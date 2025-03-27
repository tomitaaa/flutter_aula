class Pessoa{
    String _nome;
    double _peso;

    String get nome => _nome;
    set nome(String nome) => _nome = nome;
    
    double get peso{
      return _peso;
    }
    
    void set peso(double parse){
      if(parse < 0) throw Exception('Peso não pode ser negativo');
         _peso = parse;
    }

    Pessoa(String nome, double peso) : _nome = nome, _peso = peso;
    
}