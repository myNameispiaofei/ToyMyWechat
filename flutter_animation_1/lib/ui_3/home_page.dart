import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutteranimation1/ui_3/left_widget.dart';
import 'package:flutteranimation1/ui_3/right_widget.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}


class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Row(
          children: <Widget>[
            LeftWidget(),
            Expanded(
              child: RightWidget(),
            )
          ],
        ),
      ),
    );
  }
}
