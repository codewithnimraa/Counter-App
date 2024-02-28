import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;
  addValue() {
    setState(() {
      counter++;
    });
    print(counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              Text(
                "Counter: $counter",
                style: const TextStyle(fontSize: 40),
              ),
              ElevatedButton(
                  onPressed: () {
                    addValue();
                  },
                  child: const Text("Add value")),
            ],
          ),
        ));
  }
}
