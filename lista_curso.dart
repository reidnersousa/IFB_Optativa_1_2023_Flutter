import 'package:flutter/material.dart';


class Home extends StatefulWidget {
 @override
 _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
 final List<String> cursos = <String>["Java básico", "Python avançado","Angular básico"];

 final List<int> cargaHoraria = <int>[40, 30, 20];
 TextEditingController _cursoController = TextEditingController();
 TextEditingController _cargaHoraria = TextEditingController();

 void _inserir(){
   setState(() {
     cursos.insert(0,_cursoController.text);
     cargaHoraria.insert(0, int.tryParse(_cargaHoraria.text) !=null ? int.parse(_cargaHoraria.text): 0);
   });
 }

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Lista de cursos"),
       centerTitle: true,
       backgroundColor: Theme.of(context).primaryColor,
       // backgroundColor: Colors.brown,
     ),
     body: Column(
       children: <Widget>[

         Padding(
           padding: EdgeInsets.all(20),
           child: TextField(
             controller: _cursoController,
             decoration: InputDecoration(
               border: OutlineInputBorder(),
               labelText: 'Curso',
             ),
           ),
         ),
         Padding(
           padding: EdgeInsets.all(20),
           child: TextField(
             keyboardType: TextInputType.number,
             controller: _cargaHoraria,
             decoration: InputDecoration(
               border: OutlineInputBorder(),
               labelText: 'Carga horária',
             ),
           ),
         ),
         ElevatedButton(
           onPressed: _inserir,
           child: Text("Inserir"),
           style: ElevatedButton.styleFrom(
             primary: Theme.of(context).primaryColor,
           ),
         ),

         Expanded(
           child: ListView.builder(
             padding: const EdgeInsets.all(8.0),
             itemCount: cursos.length,
             itemBuilder: (BuildContext context, int index) {
               return Container(
                 height: 50,
                 margin: EdgeInsets.all(2.0),
                 color: cargaHoraria[index] >= 40? Colors.blue[400]:cargaHoraria[index] >= 30? Colors.blue[100]:Colors.grey,
                 child: Center(
                   child: Text("${cursos[index]}(${cargaHoraria[index]})",
                     style: TextStyle(fontSize: 18),),
                 ),
               );


           },


           ),
         ),
       ],
     ),
   );
 }
}
