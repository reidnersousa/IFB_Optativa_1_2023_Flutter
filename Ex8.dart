class Carro{
  String _placa;
  String _modelo;
  int _ano;
  Carro(this._placa,this._modelo,this._ano);
  String getPlaca() => _placa;
  String getModelo() => _modelo;
  int getAno() => _ano;
  @override
  String toString(){
    return "\n\nPlaca: $_placa \nModelo: $_modelo \nAno: $_ano";
  }
}
  
void main(){
  Carro c1 = Carro("KJML10","Sedan",2010);
  Carro c2 = Carro("ABCD11","SVU",2013);
  Carro c3 = Carro("CAB213","Sedan",2012);
  Carro c4 = Carro("AAAA01","Sedan",2015);
  final Map<String, Carro> someMap = {
    c1.getPlaca(): c1,
   
  };

  someMap[c2.getPlaca()] = c2;
  someMap[c3.getPlaca()] = c3;
  someMap[c4.getPlaca()] = c4;

  
 // print("\n${someMap.values}");
  
  for( var i in someMap.values){
    print(i);
  }

}
