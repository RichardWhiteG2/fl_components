import 'dart:math' show Random;

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double _width =50;
  double _height =50;
  Color _color= Colors.red;
  BorderRadiusGeometry _borderRadius= BorderRadius.circular(20);

  void changeShape(){
    final random = Random();
    print('holaaaaa');
    _width = random.nextInt(300).toDouble()+70;
    _height= random.nextInt(300).toDouble()+70;
    _color= Color.fromRGBO(
    random.nextInt(255), 
    random.nextInt(255), 
    random.nextInt(255), 
    1
    );
    _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble() +10);
    setState(() { });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text('Animated Container'),
      ),
      body: Center(
         child: Container(
          width: _width,
          height: _height,
          //color:  Colors.red,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius
            ),
         ),
      ),

      floatingActionButton: FloatingActionButton( 
        child: const Icon(Icons.play_circle_outline, size: 50,),
        onPressed: () {
          changeShape();
        },
      ),
    );
  }
}