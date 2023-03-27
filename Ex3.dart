
  


class Carro{
  String placa="";
  String cor=""; 
  int ano=0;
  Carro(String placa,String cor , int ano){
    this.placa = placa;
    this.cor   = cor;
    this.ano   = ano;
  }
  toString(){
    return "Placa $placa Cor: $cor Ano: $ano";
  }
}

class CarroFrete extends Carro{
  int capacidade=0;
  CarroFrete(String placa ,String cor,int ano,this.capacidade):super(
    placa, cor, ano);
  @override
  toString(){
    return "Placa $placa Cor: $cor Ano: $ano Capacidade $capacidade";
  }
}



void main() {
  Carro car1= Carro("KJM10","Azul",2010);
  print(car1);
  CarroFrete car2 =CarroFrete("KJM10","Azul",2021,10);
  print(car2);
  
}
