import 'view/lista_curso.dart';


import 'package:flutter/material.dart';
void main(){
 runApp((MaterialApp(
     theme: ThemeData(
         primaryColor: Colors.green[900],
         buttonTheme: ButtonThemeData(
           buttonColor: Colors.blueAccent[700],
           textTheme: ButtonTextTheme.primary,
         ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary:Colors.blueAccent)
     ),


   home: Home(),
 )));
}
