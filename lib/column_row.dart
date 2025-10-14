import 'package:flutter/material.dart';

class ColumnRow extends StatelessWidget {
  const ColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil @izz_thoriq"),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        backgroundColor: const Color.fromARGB(255, 4, 79, 141),
      ),
      body: Padding(
      padding: EdgeInsets.only(top:20),
      child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.center,
      children: [
          Center( child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset('images/faiz.jpeg', width: 200, height: 200,),
          ),
          ),
          SizedBox(height: 10),
          Text("FAIZ AT THORIQ", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
          Text("komisaris keanggotaan KOVISI", style: TextStyle(color: Colors.black),),
          Text("no hp: 0859-5031-4932", style: TextStyle(color: Colors.red),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(onPressed: () {},icon: const Icon(Icons.call,color: Color.fromARGB(255, 4, 79, 141),),
              label: const Text("Call",style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),),
              style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 179, 221, 255),
             ),
            ),
              SizedBox(width: 10),

              ElevatedButton.icon(onPressed: () {},icon: const Icon(Icons.share,color: Color.fromARGB(255, 4, 79, 141),),
              label: const Text("Share",style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),),
              style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 179, 221, 255),
             ),
            ),
              SizedBox(width: 10),

              ElevatedButton.icon(onPressed: () {},icon: const Icon(Icons.camera,color: Color.fromARGB(255, 4, 79, 141),),
              label: const Text("instagram",style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),),
              style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 179, 221, 255),
             ),
            ),
              
              SizedBox(width: 10),

            ],
           )
         ]
       ),
     ) 
    );
  }
}