class Pessoa {
  String nome = "";
  int _idade = 0;   //private
  double _altura;   //private
  Pessoa(this.nome, this._idade, this._altura);
  Pessoa.nascer(this.nome, this._altura) {
  _idade = 0;
  print("$nome nasceu!");
  dormir();
}
void dormir() {
  print("$nome está dormindo!");
}
void aniver() {
  _idade++;
}
  
// se eu  comentar o int get idade ==> _idade; não sera possivel  mudar valor fora da classe
int get idade => _idade;
double get altura => _altura;
set altura(double altura){
  if(altura > 0.0 && altura < 3.0){
      _altura = altura;
    }
  }
}
void main() {
  String algumaCoisa = "valor";
  Pessoa pessoa1 = Pessoa("João", 30, 1.80);
  Pessoa pessoa2 = Pessoa("Thiago", 28, 1.90);
  print(pessoa1.nome);
  pessoa1.nome ="Outro Nome"; // alterei o nome da pessoa pois pesssoa 1 nao foi encapuslador
  print(pessoa1.nome);
  
  print("___");
  print(pessoa1.idade);
  pessoa1._idade=13; //  vai da erro
  
  print(pessoa1.idade);
  pessoa1.aniver();
  print(pessoa1.idade);
  /*
  print(pessoa2.nome);
 
  pessoa2.dormir();
  Pessoa nene = Pessoa.nascer("Enzo", 0.30);
  print(nene.nome);
  print(nene.idade);
  nene.altura = 15.0;
  print(nene.altura);
*/
}
