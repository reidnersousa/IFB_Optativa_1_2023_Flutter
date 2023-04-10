import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButton Demo'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Primeiro Widget'),
            Icon(Icons.home, size: 30),
            Icon(Icons.info),
            Icon(Icons.close),
            Icon(Icons.menu),
            Icon(Icons.arrow_back),
            Icon(Icons.delete),
            Icon(Icons.blind,),

            //   https://fonts.google.com/icons

            Text('Segundo Widget'),
            Text('Terceiro Widget'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Implement your functionality here
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
