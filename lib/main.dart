

import 'package:fl_components/router/app_routes.dart';
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
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
      onGenerateRoute:(settings) => AppRoutes.onGenerateRoute(settings)
    );
  }
  
}