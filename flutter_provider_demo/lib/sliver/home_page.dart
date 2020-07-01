import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproviderdemo/sliver/refresh_indicator.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' inke Demo 版本'),
      ),
      body: RefreshIndicator2(
        notificationPredicate: (notifaction) {
          return true;
        },
        onRefresh: () {
          return Future.delayed(Duration(seconds: 2), () {
            return true;
          });
        },
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverToBoxAdapter(
                child: Container(
                  height:200,
                  margin: EdgeInsets.only(bottom: 0),
                  padding: EdgeInsets.only(bottom: 15, left: 15, top: 15),
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          FlutterLogo(),
                          Container(width: 15),
                          Text(
                            '作者:AAA',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Container(height: 20),
                      Text(
                        'dadsaannina马萨达四大dasd 纳袋但打卡你大可但打卡三等奖啊点拿大奖啊点拿大奖的哪；到哪；单打；大肚腩；啊；但；的；啊看大可能的哪；啊；看你s',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverPersistentHeader(
                delegate: MyDelegate(),
                pinned: true,
              ),
            ];
          },
          body: ListView.builder(
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(15),
                color: Colors.deepPurpleAccent,
                child: Center(
                  child: Text(
                    index.toString(),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              );
            },
            itemCount: 40,
          ),
        ),
      ),
    );
  }
}

class MyDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: 70,
      padding: EdgeInsets.only(left: 15, right: 15),
      color: Colors.red,
      child: Row(
        children: <Widget>[
          Text(
            "赞:1020",
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            "评论:100",
          ),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                "赞:20",
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 48;

  @override
  double get minExtent => 48;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
