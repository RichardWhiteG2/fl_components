import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18)
      ),
      elevation: 30,
      shadowColor: AppTheme.primary.withOpacity(0.8),
      child: Column(
        children:  [
          /*Image(
            image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/8/86/Landscape_mountain.jpg')
          )*/
          const FadeInImage(
            image:  NetworkImage('https://upload.wikimedia.org/wikipedia/commons/8/86/Landscape_mountain.jpg'), 
            placeholder:  AssetImage('assets/jar-loading.gif'),
            width: double.infinity,//Parametro para indicar tomar todo el ancho.
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration:  Duration(milliseconds: 4200),
          ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20,top: 20, bottom: 20),
            child: const Text('Un hermoso paisaje')
            )
        ],
      ),
    );
  }
}
