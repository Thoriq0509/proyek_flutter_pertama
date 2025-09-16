import 'package:flutter/material.dart';

class LayoutVertikal extends StatelessWidget {
  const LayoutVertikal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView Vertikal')),
      body: ListView(
        children: <Widget>[
          ListTile(leading: Icon(Icons.map), title: Text('Map')),
          ListTile(leading: Icon(Icons.photo_album), title: Text('Album')),
          ListTile(leading: Icon(Icons.phone), title: Text('Phone')),
        ]
      )
    );
  }
}
