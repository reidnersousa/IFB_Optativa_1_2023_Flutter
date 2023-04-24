Future<int> buscarValor() async {
  await Future.delayed(Duration(seconds: 2)); // aguarda 2 segundos
  return 42;
}


void main() async {
  int valor = await buscarValor();
  print(valor); // imprime 42
  buscarDados().then((dados) {
  print(dados); // imprime "Dados retornados após 2 segundos"
    });
}



Future<String> buscarDados() {
  return Future.delayed(Duration(seconds: 2), () {
    return "Dados retornados após 2 segundos";
  });
}
