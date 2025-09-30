import 'package:flutter/material.dart';
class SpacedList2 extends StatelessWidget {
  const SpacedList2({super.key});

  @override
  Widget build(BuildContext context) {
    int itemCount = 4;
    return Scaffold(
      appBar: AppBar(
        title: Text
      ('List panjang',
      style: TextStyle(
        color: const Color.fromARGB(255, 255, 255, 255),
    ),
    ),
     backgroundColor: const Color.fromARGB(255, 0, 74, 134),
     centerTitle: true,
    ),
    body: LayoutBuilder(builder: (context, constraints) {
      return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints( minHeight: constraints.maxHeight,),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.stretch,

            children: List.generate(itemCount, (index) => Card(
              color: const Color.fromARGB(255, 0, 102, 185),
              margin: const EdgeInsets.all(16),
              child: SizedBox(
                height: 100,
                child: Center(
                child: Text('Item $index',
                style: TextStyle(
                  color: Colors.white,
                ),
                ),
              ),
            )),
          )
        ),
      ),
    );
    }),
    );
  }
}
