import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
   
   final options = const ['Megaman', 'Metañ Geaar', 'Pokemon', 'Goku'];
  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Listview Tipo 2"),
      ),
      body:ListView.separated(
       itemCount: options.length, //Cuantas piezas tiene el arreglo de opciones
       itemBuilder: (context, i) => ListTile(
              title: Text(options[i]),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
            ),
       separatorBuilder: (_, __) => const Divider(), 
       )
    );
  }
}