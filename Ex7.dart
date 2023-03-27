class Ingresso{
  String dia=' ';
  String mes=' ';
  int ano=0;
  double valor=0.0;
  Ingresso(this.dia,this.mes,this.ano,this.valor);
  
  String toString(){
    return "$dia/$mes/$ano : $valor";
  }
}

void main() {
  Ingresso i1 = Ingresso('26', '05', 2021,20.25);
  Ingresso i2 = Ingresso('19', '08', 1999,20.25);
  Ingresso i3 = Ingresso('20', '04', 1929,20.25);
  Ingresso i4 = Ingresso('24', '01', 1899,20.25);
  final List<Ingresso> listaIngresso=[];
  listaIngresso.add(i1);
  listaIngresso.add(i2);
  listaIngresso.add(i3);
  listaIngresso.add(i4);
  //print(listaIngresso);
  for( var i in listaIngresso){
    print(i);
  }
  for(int i = 0; i <listaIngresso.length;i++){
    print(listaIngresso[i]);
  }
 
}
