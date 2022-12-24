import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: const [
          /*Image(
            image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/8/86/Landscape_mountain.jpg')
          )*/
          FadeInImage(
            image:  NetworkImage('https://upload.wikimedia.org/wikipedia/commons/8/86/Landscape_mountain.jpg'), 
            placeholder:  AssetImage('assets/jar-loading.gif'),
          )
        ],
      ),
    );
  }
}
