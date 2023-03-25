class InfosPessoa {
  int idade = 0;
  InfosPessoa(this.idade);
  @override
  String toString() {
    return "$idade";
  }
}
void main() {
  Map<String, InfosPessoa> pessoas = Map();
  pessoas["João"] = InfosPessoa(30);
  pessoas["Marcelo"] = InfosPessoa(20);
  print(pessoas["João"]?.idade);
  print(pessoas["João"]);/// usando o toString
  
  
  print(pessoas.keys);
  print(pessoas.keys.runtimeType);
  
  pessoas.remove("João");
  
  print(pessoas.keys);
  
  Map<int, String> ddds = Map();
  ddds[11] = "São Paulo";
  ddds[19] = "Campinas";
  ddds[13] = "Araraquara";
  
  print(ddds);
  
  Map<String, dynamic> pessoa = Map();
  pessoa["nome"] = "Patrícia";
  pessoa["idade"] = 10;
  pessoa["altura"] = 1.50;
  print(pessoa); 
 
}
