Future<int> buscarValor() async {
  await Future.delayed(Duration(seconds: 2)); // aguarda 2 segundos
  return 42;
}


void main() async {
  int valor = await buscarValor();
  print(valor); // imprime 42
}
