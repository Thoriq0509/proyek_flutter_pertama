import 'package:flutter/material.dart';

class LayoutVertikal extends StatelessWidget {
  const LayoutVertikal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView')),
      body: ListView(
        children: [
          ListTile(leading: Icon(Icons.camera ), title: Text('Camera')),
          ListTile(leading: Icon(Icons.photo_album), title: Text('Album')),
          ListTile(leading: Icon(Icons.music_note), title: Text('music')),
        ]
      )
    );
  }
}
