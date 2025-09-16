import 'package:flutter/material.dart';

class LayoutWidget extends StatelessWidget {
  const LayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
      ),

      body: Column(
        children: [
          Image.asset('images/logoypc.png', width: 100, height: 100,), //menampilkan gambar
          const SizedBox(height: 10), //memberikan jarak gambar sama text

          const Text
          ('SMK YPC TASIKMALAYA',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          ),

          Text('Jl. Garut - Tasikmalaya, Cikunten, Kec. Singaparna, Kabupaten Tasikmalaya, Jawa Barat 46414',
          style: TextStyle(color: Colors.black),),

          Text('Phone: (0265) 546717',
          style: TextStyle(color: Colors.blue,),
          ),
         
          SizedBox(height: 16),

          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.call, color: Colors.blue,),
                  Text('Call', style: TextStyle(color: Colors.black,),)
                ],
              ),
              Column(
                children: [
                  Icon(Icons.map, color: Colors.blue,),
                  Text('Route', style: TextStyle(color: Colors.black,),)
                ],
              ),
              Column(
                children: [
                  Icon(Icons.share, color: Colors.blue,),
                  Text('Share', style: TextStyle(color: Colors.black,),)
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}