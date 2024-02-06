import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 10;

  void increase() {
    setState(() {
      counter++;
    });
  }

  void decrease() {
    setState(() {
      counter--;
    });
  }

  void reset() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
        appBar: AppBar(
          title: const Text('CounterScreen'),
          elevation: 0,
          backgroundColor: Colors.pink,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: CustomFloattingButtons(
          increaseFn: increase,
          decreaseFn: decrease,
          resetFn: reset,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text("Counter"),
            Text('$counter', style: fontSize30)
          ],
        )));
  }
}

class CustomFloattingButtons extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloattingButtons({
    super.key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.resetFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.pink,
          onPressed: () => increaseFn(),
          child: const Icon(
            Icons.exposure_minus_1_outlined,
          ),
        ),
        const SizedBox(width: 20),
        FloatingActionButton(
          backgroundColor: Colors.pink,
          onPressed: () => resetFn(),
          child: const Icon(
            Icons.restore_outlined,
          ),
        ),
        const SizedBox(width: 20),
        FloatingActionButton(
            backgroundColor: Colors.pink,
            onPressed: () => decreaseFn(),
            child: const Icon(Icons.exposure_plus_1_outlined))
      ],
    );
  }
}
