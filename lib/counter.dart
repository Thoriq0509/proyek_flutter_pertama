import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterState();
}

class _CounterState extends State<CounterPage> {
  int counter = 0; 

  void increment() {
    setState(() {
      counter++; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nilai Counter: $counter'),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: increment,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: const Text("Tambah nilai"),
            ),
          ],
        ),
      ),
    );
  }
}
