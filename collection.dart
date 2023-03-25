class Pessoa {
    String nome;
    int idade;
    Pessoa(this.nome, this.idade);
  }
  void main() {
    List<String> nomes = ["Maria", "Carla", "Amélia"];
    print(nomes[0]);
    nomes.add("Marta");
    print(nomes);
    print(nomes.length);
    
    nomes.removeAt(2);
    print(nomes);
    
    nomes.insert(1, "Suzana");
    print(nomes);
    
    print(nomes.contains("Paula"));
    
    List<Pessoa> pessoas = [];
    pessoas.add(Pessoa("Fabrícia", 30));
    pessoas.add(Pessoa("João", 20));

    for(Pessoa p in pessoas){
      print(p.nome);
      print("object instance$p");
  }
  
}
