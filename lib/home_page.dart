import 'package:flutter/material.dart';
import 'package:proyek_flutter_pertama/home_page2.dart';
import 'package:proyek_flutter_pertama/home_page3.dart';

class HomePage extends StatelessWidget {
  final String nama = "Faiz At Thoriq";
  final int umur = 16;
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute
                (builder: (context) => HomePage2(nama: nama, umur: umur)));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: const Text("pindah ke halaman 2"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute
                (builder: (context) => const HomePage3()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: const Text("pindah ke halaman 3"),
            ),
          ],
        ),
      ),
    );
  }
}