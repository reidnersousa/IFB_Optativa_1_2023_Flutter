class Pessoa {
  String nome = "";
  int idade = 0;
  double altura;
  Pessoa(this.nome, this.idade, this.altura);

  Pessoa.nascer(this.nome, this.altura) {
    idade = 0;
    print("$nome nasceu!");
    dormir();
  }
  void dormir() {
    print("$nome está dormindo!");
  }
  void aniver() {
    idade++;
  }
}
void main() {
  Pessoa pessoa1 = Pessoa("João", 50, 1.80);
  Pessoa pessoa2 = Pessoa("Maria", 18, 1.60);
  print(pessoa1.nome);
  print(pessoa2.nome);
  print(pessoa1.idade);
  pessoa1.aniver();
  print(pessoa1.idade);
  pessoa2.dormir();
  Pessoa nene = Pessoa.nascer("Magali", 0.25);
  print(nene.nome);
  print(nene.idade);

}
