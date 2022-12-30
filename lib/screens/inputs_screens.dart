import 'package:flutter/material.dart';

import '../widgets/custom_input_fiel.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: const[
              CustomInputFiel(labelText: 'Nombre', hintText: 'Nomvre usuario',)
            ],
          ),
        ),
      )
    );
  }
}

