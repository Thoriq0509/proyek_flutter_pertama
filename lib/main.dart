import 'package:flutter/material.dart';
import 'package:proyek_flutter_pertama/layout_listitem.dart';
import 'package:proyek_flutter_pertama/layout_widget.dart';
import 'package:proyek_flutter_pertama/layout_gridview.dart';
import 'package:proyek_flutter_pertama/layout_listview_horizontal.dart';
import 'package:proyek_flutter_pertama/layout_listview_vertikal.dart';
import 'package:proyek_flutter_pertama/spaced_list2.dart';
import 'package:proyek_flutter_pertama/long_list.dart';
import 'package:proyek_flutter_pertama/combined_list.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Flutter Thoriq',
      debugShowCheckedModeBanner: false,
      home: const SpacedAndLongList(),
    );
  }
}
