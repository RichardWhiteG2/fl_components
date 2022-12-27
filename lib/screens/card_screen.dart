import 'package:flutter/material.dart';

import 'package:fl_components/theme/app_theme.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar( 
        title: const Text('Tarjetas Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
           CustomCardType1(),
           //Para dar espacio entre las tarjetas 
           SizedBox(height: 10),
           CustomCardType2(name:'View Hermosa', imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/8/86/Landscape_mountain.jpg',),
           SizedBox(height: 20),
           CustomCardType2(name: 'hola', imageUrl: 'https://cdn.cnn.com/cnnnext/dam/assets/190517091026-07-unusual-landscapes-travel-full-169.jpg',),
           SizedBox(height: 20),
           CustomCardType2(imageUrl: 'https://images.pexels.com/photos/1619317/pexels-photo-1619317.jpeg?cs=srgb&dl=pexels-james-wheeler-1619317.jpg&fm=jpg',),
           SizedBox(height: 20),
           CustomCardType2(imageUrl: 'https://www.journeymexico.com/wp-content/uploads/2013/03/mexico-landscapes.jpg',),
           SizedBox(height: 100),
           
        ],
      ) 

    );
  }
}
