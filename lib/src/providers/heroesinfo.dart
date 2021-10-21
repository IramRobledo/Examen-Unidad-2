import 'package:flutter/material.dart';

class HeroesInfo with ChangeNotifier { //con ChangeNotifier tenemos acceso al metodo notifyListeners

String _heroe = 'Capitan America'; //cuando ponemos "_" en una clase se hace privada
Color colorBase = Colors.blue;


 get heroe{
   return _heroe; 
 }

 set heroe( String nombre ){ //para colocar la informacion
    this._heroe = nombre;

    this.colorBase = ( nombre == 'Ironman' ) ? Colors.red: Colors.blue;

    notifyListeners(); //notifica a todos cuando se le asigne un valor a "heroe" 
 } 

}