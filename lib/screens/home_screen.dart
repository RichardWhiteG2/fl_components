import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
      ),
      body: ListView.separated(
        itemBuilder: (context, i) => ListTile(
          leading:  Icon(menuOptions[i].icon, color: AppTheme.primary),
          
          title: Text(menuOptions[i].name),
          onTap: () {
            //Navegar a otra pantalla Navigator.
            
            /* 
            final route = MaterialPageRoute(
              builder: (context) => const Listview1Screen()
              );
           Navigator.push(context, route);*/

           //Otra forma de navegar a otra pantalla 
           //Se coloca card de la lista que esta en routes en el main.dart
           Navigator.pushNamed(context, menuOptions[i].route);

           //Funciona para un LOGIN 
           //Navigator.pushReplacement(context, route);
          },
        ), 
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: menuOptions.length
        )
    );
  }
}