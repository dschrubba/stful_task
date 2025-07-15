import 'package:flutter/material.dart';

class CounterCard extends StatefulWidget {
  final Function(int c)? onCounterIncrement;
  const CounterCard({super.key, this.onCounterIncrement,});

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
                  if (widget.onCounterIncrement != null) {
                    widget.onCounterIncrement!(_counter);
                  }
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