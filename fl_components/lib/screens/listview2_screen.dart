import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const['Megaman', 'Metal Gear', 'Super Smash', 'Pocahontas'];
  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Listview Tipo 2")
        ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          onTap: () {
            final game = options[index];
            if (kDebugMode) {
              print (game);
            }
          }
        ), 
        separatorBuilder: (_, __) => const Divider(),
        itemCount: options.length
       )
    );
  }
}