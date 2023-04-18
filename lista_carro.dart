import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _carroController = TextEditingController();

  TextEditingController _quilometrosRodados = TextEditingController();

  void _inserir() {
    setState(() {
      carros.insert(0, _carroController.text);
      quilometrosRodados.insert(
          0,
          int.tryParse(_quilometrosRodados.text) != null
              ? int.parse(_quilometrosRodados.text)
              : 0);
    });
  }

  _limparFormulario() {
    _carroController.text = "";
    _quilometrosRodados.text = "";
  }

  final List<String> carros = <String>[
    "Ford Mustang",
    "Chevrolet Camaro 80",
    "Mitsubishi Lancer Evolution"
  ];
  final List<int> quilometrosRodados = <int>[40, 30, 20];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de carros"),

        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: _limparFormulario,
          )
        ],

        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        //backgroundColor: Colors.brown,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              controller: _carroController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Placa',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: _quilometrosRodados,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'quilômetro Rodado',
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
          ElevatedButton(
            onPressed: _limparFormulario,
            child: Text("Limpar"),
            style: ElevatedButton.styleFrom(
              primary: Theme.of(context).primaryColor,
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: carros.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  margin: EdgeInsets.all(2.0),
                  color: quilometrosRodados[index] >= 40
                      ? Colors.blue[400]
                      : quilometrosRodados[index] >= 30
                          ? Colors.blue[100]
                          : Colors.grey,
                  child: Center(
                    child: Text(
                      "carro ${carros[index]} quilometros Rodados (${quilometrosRodados[index]})",
                      style: TextStyle(fontSize: 18),
                    ),
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
