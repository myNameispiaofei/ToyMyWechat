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
                  _headerInfoWidet(),
                  _sectionSpaceWidet(),
                  DiscoverCell(
                      title: '支付', imageName: 'images/we_pay.png'),
                  _sectionSpaceWidet(),
                  DiscoverCell(
                      title: '收藏', imageName: 'images/sweep_blue.png'),
                  _cellBaseLine(),
                  DiscoverCell(title: '相册', imageName: 'images/shake.png'),
                  _cellBaseLine(),
                  DiscoverCell(title: '卡包', imageName: 'images/we_card_icon.png'),
                  _cellBaseLine(),
                  DiscoverCell(title: '表情', imageName: 'images/we_collect.png'),
                  _sectionSpaceWidet(),
                  DiscoverCell(title: '设置', imageName: 'images/we_setting_icon.png'),
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

  _headerInfoWidet() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      color: Colors.white,
      child: Container(
        height: 70,
        margin: EdgeInsets.only(top: 90,bottom: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(width: 25),
            Container(
              width: 65,
              height: 65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                    image: AssetImage('images/my_portrait.png'), fit: BoxFit.cover),
              ),
            ), //
            Container(width: 15),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(height: 3),
                    _headNickWidget(),
                    Container(height: 10),
                    _headWeChatNumWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _headNickWidget() {
    return Text(
      '啦啦啦～卖报的小行家！',
      style: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
    );
  }

  _headWeChatNumWidget() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Text(
                  '微信号： mb524281280',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Color(0xffebbebe)),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Image(
                  image: AssetImage('images/icon_right.png'),
                  width: 15,
                ),
                Container(width: 5),
                Image(
                  image: AssetImage('images/icon_right.png'),
                  width: 15,
                ),
              ],
            ),
          ),
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

}

