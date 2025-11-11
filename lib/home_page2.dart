import 'package:flutter/material.dart';
import 'package:proyek_flutter_pertama/home_page3.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Kembali ke halaman sebelumnya"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute
                (builder: (context) => const HomePage3()));
              },
              child: const Text("pindah ke halaman 3"),
            ),
          ],
        ),
      ),
    );
  }
}
