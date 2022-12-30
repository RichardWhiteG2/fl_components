import 'package:flutter/material.dart';

class CustomInputFiel extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType ? keyboardType;
  final bool  obscureText;



  const CustomInputFiel({
    Key? key, 
    this.hintText, 
    this.labelText, 
    this.helperText, 
    this.icon, 
    this.suffixIcon, 
    this.keyboardType, 
    this.obscureText=false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (value) {
        print('Value: $value');
      },
      validator: (value) {
        if(value==null) return 'Este campo es requerido';
        return  value.length <3 ? 'Hola Mundo': null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration:  InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        //counterText: '3 caracteres',
        //prefix: Icon(Icons.verified_user_outlined),
        suffixIcon: suffixIcon == null? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
        /*border:  OutlineInputBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10))
        )*/
      ),
    );
  }
}