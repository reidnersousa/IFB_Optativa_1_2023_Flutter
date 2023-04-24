Future<Null> fazerAlgoAssincrono() async {
  print("Iniciando a tarefa assíncrona...");
  await Future.delayed(Duration(seconds: 2));
  print("Tarefa assíncrona concluída.");
}

void main() {
  fazerAlgoAssincrono();
  print("Fim do programa.");
}
