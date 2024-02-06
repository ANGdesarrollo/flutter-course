import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class CustomCard1 extends StatelessWidget {
  const CustomCard1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary,),
            title: Text('Soy un titulo'),
            subtitle: Text('Lorem'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              TextButton(
                onPressed: () {},
                child: const Text("Cancel")
              ),
              TextButton(
                onPressed: () {}, 
                child: const Text("Ok")
              )
            ],),
          )
        ],
      )
    );
  }
}