import 'package:flutter/material.dart';
import 'package:mywechat/model/myhome_page.dart';


// 垃圾回收机制

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        highlightColor: Color.fromRGBO(1, 0, 0, 0.0),
        splashColor: Color.fromRGBO(1, 0, 0, 0.0),
        primarySwatch: Colors.blue,
      ),
      home: RootPage(),
    );
  }
}




