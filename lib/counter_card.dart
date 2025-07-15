import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class CounterCard extends StatefulWidget {
  final BehaviorSubject<int> counter;
  const CounterCard({super.key, required this.counter});

  @override
  State<CounterCard> createState() => _CounterCardState();
}

class _CounterCardState extends State<CounterCard> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('Zähler: $_counter'),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _counter++;
                  widget.counter.add(widget.counter.value + 1);
                });
              },
              child: const Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}