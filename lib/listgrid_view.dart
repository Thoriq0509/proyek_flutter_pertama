import 'package:flutter/material.dart';

class ListviewGrid extends StatelessWidget {
  const ListviewGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List Grid')),
      body: Column(
        children: [
          Text("menu aplikasi"),
          Text("text 2"),
          Text("text 3"),
          Text("text 4"),
          Text("text 5"),
          Text("text 6"),
        ]
      )
    );
  }
}
