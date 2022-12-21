

import 'package:flutter/material.dart';

import 'package:fl_components/screens/screens.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: const CardScreen(),
      initialRoute: 'home',
      routes: {
        'home'     : (BuildContext context ) => const HomeScreen(),
        'listview1': (BuildContext context ) => const Listview1Screen(),
        'listview2': (BuildContext context ) => const Listview2Screen(),
        'alert'    : (BuildContext context ) => const AlertScreen(),
        'card'     : (BuildContext context ) => const CardScreen(),
      }
    );
  }
}