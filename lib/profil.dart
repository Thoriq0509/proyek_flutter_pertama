import 'package:flutter/material.dart';

class MyProfil extends StatelessWidget {
  const MyProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profil",),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Center(
            child: Image.asset('images/faiz.jpeg', width: 200, height: 200,),
          ),
            const Text
            ('FAIZ AT THORIQ',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            ),
          
            Text('XI RPL 1',
            style: TextStyle(color: Colors.black),
            ),

            Text('Phone: 0859-5031-4932',
            style: TextStyle(color: const Color.fromARGB(255, 255, 0, 0),),
            ),
        ]
      ),
    );
  }
}