import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCarType1 extends StatelessWidget {
  const CustomCarType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children:  [
           const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary,),
            title: Text('Soy un titulo'),
            subtitle: Text('Ut ex consequat laborum ipsum occaecat.'),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {}, 
                  child: const Text('Cancel')
                ),
                TextButton(
                  onPressed: () {}, 
                  child: const Text('Ok')
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}