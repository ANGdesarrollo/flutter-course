import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    const fontSize30 = TextStyle(fontSize: 30);
    int counter = 10;

    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeScreen'),
          elevation: 0,
          backgroundColor: Colors.pink,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pink,
          onPressed: () {
            if (kDebugMode) {
              print("Hola mundo");
              counter++;
            }
          },
          child: const Icon(
            Icons.add,
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[const Text("Counter"), Text('$counter', style: fontSize30)],
        )));
  }
}
