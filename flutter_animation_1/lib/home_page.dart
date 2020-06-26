import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutteranimation1/ui_4/home_page.dart' as ui_4;
import 'package:flutteranimation1/ui_3/home_page.dart' as ui_3;
import 'package:flutteranimation1/ui_1/home_page.dart' as ui_1;
import 'package:flutteranimation1/ui_2/home_page.dart' as ui_2;
import 'package:flutteranimation1/ui_5/home_page.dart' as ui_5;

class MyHomePage extends StatelessWidget {
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw ("dada");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ui_4.HomePage()));
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Text(
                  "My_Flutter UI _4",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ui_3.Homepage()));
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Text(
                  "My_Flutter UI _3",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ui_1.HomePage()));
              },
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Text(
                  "My_Flutter UI _1",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ui_2.HomePage()));
              },
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Text(
                  "My_Flutter UI _2",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ui_5.HomePage()));
              },
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Text(
                  "My_Flutter UI _5",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<MainBean> imageList = [
    MainBean(
      "Flutter精美UI系列视频-4",
      "assets/images/main_4.png",
      MaterialPageRoute(builder: (context) => ui_4.HomePage()),
    ),
  ];
}

class MainBean {
  String title;

  String url;
  Route route;

  MainBean(this.title, this.url, this.route);
}
