import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {


  double _sliderValue = 100;
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider(
              min: 50,
              max: 400,
              activeColor: AppTheme.primary,
              value: _sliderValue, 
              onChanged: ( value ){
                _sliderValue =value;
                setState(() {});
                //print(value);
              } 
            ),
            Image(
              image: NetworkImage('https://images.unsplash.com/photo-1531259683007-016a7b628fc3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmF0bWFufGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),
            const SizedBox(height: 50),
          ],
        ),
      )

    );
  }
}