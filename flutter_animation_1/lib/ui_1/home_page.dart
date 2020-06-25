import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutteranimation1/ui_1/most_popular_widget.dart';
import 'package:flutteranimation1/ui_1/travel_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, // ?????
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              'Travel Blog',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ),
          Expanded(
            flex: 2,
            child: TravelWidget(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                "Most Popular",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Text(
                  "View all",
                  style: TextStyle(color: Colors.deepOrange, fontSize: 20),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: MostPopularWidget(),
          ),
        ],
      ),
    );
  }
}
