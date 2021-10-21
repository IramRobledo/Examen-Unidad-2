import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/providers/heroesinfo.dart';
import 'package:flutter_application_1/src/providers/villanosinfo.dart';
import 'package:provider/provider.dart';


class SuperFloatingAction extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

final heroesInfo = Provider.of<HeroesInfo>(context);
final villanosInfo = Provider.of<VillanosInfo>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          child: Icon( Icons.access_time  ),
          backgroundColor: Colors.red,
          onPressed: (){
           heroesInfo.heroe = 'Ironman'; //se hace el cambio de heroe
           villanosInfo.villano = 'El Mandarin';
           } 
        ),
        SizedBox( height: 10.0 ),
        FloatingActionButton(
          child: Icon( Icons.account_balance  ),
          backgroundColor: Colors.blue,
           onPressed: (){
           heroesInfo.heroe = 'Capitan America'; //se hace el cambio de heroe
           villanosInfo.villano = 'Red Skull';
           }
        ),
      ],
    );
  }
}