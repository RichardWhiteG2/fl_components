import 'package:flutter/material.dart';

import '../widgets/custom_input_fiel.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState>myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues ={
        'first_name': 'Ricardo',
        'last_name' : 'Blanco',
        'email'     : 'richard.white@outlook.com',
        'password'  : '123456',
        'role'      : 'Admin'
    };

    return  Scaffold(
      appBar: AppBar(
        title: Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputFiel(labelText: 'Nombre', hintText: 'Nombre usuario', formProperty: 'first_name', formValues: formValues,),
                const SizedBox( height: 30 ),
                
                CustomInputFiel(labelText: 'Apellido', hintText: 'Apellido usuario', formProperty: 'last_name', formValues: formValues,),
                const  SizedBox( height: 30 ),
                
                CustomInputFiel(labelText: 'Correo', hintText: 'Correo usuario', keyboardType: TextInputType.emailAddress , formProperty: 'email', formValues: formValues,),
                const  SizedBox( height: 30 ),
                
                CustomInputFiel(labelText: 'Contraseña', hintText: 'Contraseña usuario', obscureText: true, formProperty: 'password', formValues: formValues),
                const SizedBox( height: 30 ),
          
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar'))
                  ),
                  onPressed: () {

                    FocusScope.of(context).requestFocus( FocusNode());
                    //FocusScope Oculta el teclado 
                    if(!myFormKey.currentState!.validate()){
                      print('Formulario no válido');
                      return;
                    }
                    //Todo: imprimir valores del formulario
                    print(formValues);
                  }, 
                )
          
              ],
            ),
          ),
        ),
      )
    );
  }
}

