import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
         child: ElevatedButton(
          child: const Padding(
            padding:  EdgeInsets.all(8.0),
            child:  Text('Mostrar Alerta', style: TextStyle(fontSize: 16)),
          ),
          onPressed: () {

          } 
        )
      ),
      floatingActionButton: FloatingActionButton(
        
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        },
      ),

    );
  }
}