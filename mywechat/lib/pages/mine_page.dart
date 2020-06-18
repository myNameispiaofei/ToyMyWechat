import 'package:flutter/material.dart';

import 'Discover/discover_cell.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[

          Container(
            color: Color.fromRGBO(220, 220, 220, 1),
            child: MediaQuery.removePadding(
              removeTop: true,
              context: context,
              child: ListView(
                children: <Widget>[
                  Container(
                    height: 200,
                    color: Colors.red,
                    child: Center(child: Text("头部用户 信息区域")),
                  ),
                  DiscoverCell(
                      title: '朋友圈', imageName: 'images/friend_c_icon.png'),
                  DiscoverCell(
                      title: '扫一扫', imageName: 'images/sweep_blue.png'),
                  DiscoverCell(title: '摇一摇', imageName: 'images/shake.png'),
                  DiscoverCell(title: '看一看', imageName: 'images/look_icon.png'),
                  DiscoverCell(title: '搜一搜', imageName: 'images/搜一搜.png'),

                ],
              ),
            ),
          ),
          Positioned(
              top: 0,
              left: 0,
            right: 0,
            height: 64,
            child: Container(
              height: 25,
              color: Color.fromRGBO(0, 0, 0, 0),
              margin: EdgeInsets.only(top: 40, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Image(
                    image: AssetImage('images/camera_icon.png'),
                  )
                ],
              ),
            ), //相机
          )
        ],
      ),
    );
  }
}
