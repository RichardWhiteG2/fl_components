

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class AppTheme{
  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
   //Color Primario
    primaryColor: Colors.indigo,

    //AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0
    ),

    //ATextButton Theme
    textButtonTheme:  TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary)
      
    ),

    //FlotingActionButtons
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 0
    ),
    //EletedButtons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary,
        shape: const StadiumBorder(),
        elevation: 0
      ),
    ),

    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle:  TextStyle(color: primary),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide( color: primary ),
        borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10) )
      ),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide( color: primary ),
        borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10) )
      ),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10) )
      ),

    )


  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
   //Color Primario
    primaryColor: Colors.indigo,

    //AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0
    ),
    scaffoldBackgroundColor: Colors.black
  );
}