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
              CustomInputFiel(labelText: 'Nombre', hintText: 'Nombre usuario'),
              SizedBox( height: 30 ),
              
              CustomInputFiel(labelText: 'Apellido', hintText: 'Apellido usuario'),
              SizedBox( height: 30 ),
              
              CustomInputFiel(labelText: 'Correo', hintText: 'Correo usuario', keyboardType: TextInputType.emailAddress ,),
              SizedBox( height: 30 ),
              
              CustomInputFiel(labelText: 'Contraseña', hintText: 'Contraseña usuario', obscureText: true),
              SizedBox( height: 30 ),

            ],
          ),
        ),
      )
    );
  }
}

