import 'package:flutter/material.dart';
import 'package:mywechat/pages/Friend/friend_page.dart';
import 'package:mywechat/pages/chat_page.dart';
import 'package:mywechat/pages/Discover/discover_page.dart';
import 'package:mywechat/pages/mine_page.dart';


class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  int _curentIndex = 0;
  List<Widget> _pages = [ChatPage(),FriendsPage(), DiscoverPage(),MinePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(

        onTap: (int index) {
          setState(() {
            _curentIndex = index;
          });
        },
        selectedFontSize: 12,
        currentIndex: _curentIndex,
        fixedColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text('微信')),
          BottomNavigationBarItem(
              icon: Icon(Icons.battery_alert), title: Text('通讯录')),
          BottomNavigationBarItem(
              icon: Icon(Icons.battery_alert), title: Text('发现')),
          BottomNavigationBarItem(
              icon: Icon(Icons.pregnant_woman), title: Text('我')),
        ],
      ),
      body:_pages[_curentIndex] ,
    );
  }
}
