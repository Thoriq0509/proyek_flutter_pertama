import 'package:flutter/material.dart';

class SpacedAndLongList extends StatelessWidget {
  const SpacedAndLongList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> longItems =
        List<String>.generate(100, (i) => 'Item ${i + 1}');
    final List<Color> spacedColors = [
      Colors.lightBlue,
      Colors.lightGreen,
      Colors.yellow,
      Colors.orange,
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Spaced & Long List'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '1. List dengan Spasi Merata',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Column(
              children: List.generate(spacedColors.length, (index) {
                return Card(
                  color: spacedColors[index],
                  margin: const EdgeInsets.symmetric(
                      horizontal: 16, vertical: 8),
                  child: SizedBox(
                    height: 80,
                    child: Center(
                      child: Text(
                        'Item ${index + 1}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),

      
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '2. List Panjang 100 Item',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            SizedBox(
              height: 400, 
              child: ListView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemCount: longItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(Icons.star),
                    title: Text(
                      longItems[index],
                      style: TextStyle(
                        color: index % 2 == 0 ? Colors.red : Colors.blue,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}