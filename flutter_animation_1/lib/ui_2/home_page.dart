import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutteranimation1/ui_2/page_view_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedFontSize: 0,
        selectedFontSize:  0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.navigation,
              color: Colors.black54,
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark,
              color: Colors.black54,
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              color: Colors.black54,
            ),
            title: Text(""),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 40, top: MediaQuery.of(context).padding.top + 59),
            child: Text(
              "Find your \nnext vacation.",
              style:  TextStyle(color: Colors.black, fontWeight:FontWeight.bold,fontSize: 25, letterSpacing: 1.3, height: 1.3),
            ),
          ),
          Expanded(
            child: PageViewWidget(),
          ),
        ],
      ),
    );
  }
}
