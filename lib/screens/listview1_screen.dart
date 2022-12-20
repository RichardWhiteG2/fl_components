import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
   
   final options = const ['Megaman', 'Metañ Geaar', 'Pokemon', 'Goku'];
  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Listview Tipo 1"),
      ),
      body:ListView(
        children: [
          //el mapa agrega todos los elementos de options y los guada en game, porterior el ListTitle copia lo de game 
          ...options.map(
            (game) => ListTile(
              title: Text(game),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
            )
            ).toList(),

            

          
            
        ],
      ),
    );
  }
}