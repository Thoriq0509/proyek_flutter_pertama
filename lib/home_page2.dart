import 'package:flutter/material.dart';
import 'package:proyek_flutter_pertama/home_page3.dart';

class HomePage2 extends StatelessWidget {
  final String nama;
  final int umur;
  const HomePage2({super.key, required this.nama, required this.umur});

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
            Text('Selamat datang, $nama'),
            SizedBox(height: 10),
            Text('Umur saya, $umur tahun'),
            SizedBox(height: 10),
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
