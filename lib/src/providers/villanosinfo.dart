import 'package:flutter/material.dart';

class VillanosInfo with ChangeNotifier { //con ChangeNotifier tenemos acceso al metodo notifyListeners

String _villano = 'Red Skull'; //cuando ponemos "_" en una clase se hace privada

 get villano{
   return _villano; 
 }

 set villano( String nombre ){ //para colocar la informacion
    this._villano = nombre;
    notifyListeners(); //notifica a todos cuando se le asigne un valor a "villano" 
 } 

}