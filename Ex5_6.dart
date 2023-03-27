import 'dart:math';

double truncate(double val, int fractionDigits) {
  var mod = pow(10.0, fractionDigits).toDouble();
  return ((val * mod).round().toDouble() / mod);
}

abstract class Aluno{
  int _matricula;
  String _nome;
  int peso=0;
  
  Aluno(this._matricula,this._nome);
  int getMatricula() => _matricula;
  String getNome() => _nome;
  double calcularMedia(List notas){
  double soma = 0.0;
  for(int i = 0; i < notas.length; i++){
      soma += notas[i];
    }
    return soma/notas.length;
  }
}
class AlunoEspecial extends Aluno{
  int _limiteDisciplina;
  List <double>n=[];
  AlunoEspecial(int matricula, String nome,this._limiteDisciplina,this.n):
    super(matricula,nome);
  int getLimiteDisciplina() =>_limiteDisciplina;
  
  @override
  double calcularMedia(List n){
  double soma = 0.0;
  double pesos =3.0;
  for(int i = 0; i < n.length; i++){
      soma += n[i]*pesos;
      pesos -=0.2;
      if(pesos ==0.0){
        break;
      }
    }
    return soma/n.length;
  }
  @override
  String toString() {
    return "Aluno especial | matricula: $_matricula Nome: $_nome,limite de Disciplina: $_limiteDisciplina Notas : $n";
  
    }
  }

List<double> gerarNotas(){
  List<double> notas=[];
  int tamanho= Random().nextInt(10);
  print(tamanho);
  double d=0.0;
  for(int i=0; i <tamanho ; i++){
    
    double aleatorioNumero = Random().nextDouble()*10;
    
    d=truncate(aleatorioNumero,2);
    
    notas.add(d);
  }
  return notas;
  
}

void main(){
  

  List<double>l=[];
  l=gerarNotas();
  print(l);
  AlunoEspecial aluno =AlunoEspecial(2020,"Carlos",4,l);
  print(aluno);
  double media;
  media=aluno.calcularMedia(l);
  print(media);
 
  
}
