import 'package:flutter/material.dart';
import 'package:mywechat/pages/Discover/discover_cell.dart';

class DiscoverPage extends StatefulWidget {
  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.red,
              height: 55,
            ),
            Expanded(
              child: _discoverBody(),
            ),
          ],
        ),
        //_discoverBody(),
      ),
    );
  }
}

_discoverBody() {
  return Container(
    color: Color.fromRGBO(223, 223, 223, 1.0),
    child: ListView(
      children: <Widget>[
        DiscoverCell(title: '朋友圈', imageName: 'images/friend_c_icon.png'),
        _sectionSpaceWidet(),
        DiscoverCell(title: '扫一扫', imageName: 'images/sweep_blue.png'),
        _cellBaseLine(),
        DiscoverCell(title: '摇一摇', imageName: 'images/shake.png'),
        _sectionSpaceWidet(),
        DiscoverCell(title: '看一看', imageName: 'images/look_icon.png'),
        _cellBaseLine(),
        DiscoverCell(title: '搜一搜', imageName: 'images/搜一搜.png'),
        _sectionSpaceWidet(),
        DiscoverCell(title: '附近的人', imageName: 'images/nearby_icon.png'),
        _cellBaseLine(),
        DiscoverCell(
          imageName: 'images/shopping_icon.png',
          title: '购物',
          subTitle: '618限时特价',
        ),
        _sectionSpaceWidet(),
        DiscoverCell(title: '游戏', imageName: 'images/game_icon.png'),
        _sectionSpaceWidet(),
        DiscoverCell(title: '小程序', imageName: 'images/we_applets.png'),
      ],
    ),
  );
}

_cellBaseLine() {
  return Row(
    children: <Widget>[
      Container(width: 50, height: 0.5, color: Colors.white),
      Container(height: 0.5, color: Colors.grey)
    ],
  );
}

_sectionSpaceWidet() {
  return Container(
    height: 10,
  );
}
