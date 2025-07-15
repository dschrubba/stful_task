import 'package:flutter/material.dart';
import 'package:stful_task/counter_card.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int sum = 0;
  void counterIncremented(int c) {
    setState(() {
      sum += 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          spacing: 16,
          children: [
            CounterCard(onCounterIncrement: counterIncremented),
            CounterCard(onCounterIncrement: counterIncremented),
            CounterCard(onCounterIncrement: counterIncremented),
            CounterCard(onCounterIncrement: counterIncremented),
            CounterCard(onCounterIncrement: counterIncremented),
            Text("Summe: $sum")
          ],
        ),
      ),
    );
  }
}