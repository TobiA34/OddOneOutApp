
import 'dart:ui';

import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  @override
  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  String name;
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[600],
        drawer: Drawer(
        ),
        appBar: AppBar(
          title: Text("Input Screen", style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.amber[100],
          centerTitle: true,
          iconTheme: new IconThemeData(color: Colors.black),
        ),
    );
  }
}