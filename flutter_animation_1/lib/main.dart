import 'package:flutter/material.dart';
import 'package:flutteranimation1/home_page.dart';

void main() {
  runApp(MyUIApp());
}


class MyUIApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "UI Demo",
      home: MyHomePage(),
    );
  }
}
