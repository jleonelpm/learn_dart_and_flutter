//Programming By Leonel

import 'package:flutter/material.dart';
import 'listview.dart';
import 'dropdown.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          //child: Lista(),
          child: DropdownButtonHint(),
        ),
      ),
    );
  }
}