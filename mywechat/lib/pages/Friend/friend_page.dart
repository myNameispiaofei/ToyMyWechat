import 'package:flutter/material.dart';

import 'friend_data.dart';
import 'friend_index_bar.dart';
import 'friend_page_cell.dart';

class FriendsPage extends StatefulWidget {
  @override
  _FriendsPageState createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {

  ScrollController _scrollController;
  final List<Friends> _listDatas = [];
  final Map _groupOffsetMap = {
    INDEX_WORDS[0]: 0.0,
    INDEX_WORDS[1]: 0.0,
  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('通讯录'),
      ),
      body:Stack(
        children: <Widget>[
          Container(
              color: Colors.green,
              child: ListView.builder(
                controller: _scrollController,
                itemCount: _listDatas.length + _headerData.length,
                itemBuilder: _itemForRow,
              )),
        FriendIndexbar(),
//
        ],
      ),
    );
  }

  void initState() {
    super.initState();
    _prepareData();
    _scrollController = ScrollController();

  }

  _prepareData (){
    _listDatas..addAll(datas)..addAll(datas);
    // 排序
    _listDatas.sort((Friends a ,Friends b) {
      return a.indexLetter.compareTo(b.indexLetter);
    });
  }

  final List<Friends> _headerData = [
    Friends(imageUrl: 'images/new_friend_icon.png', name: '新的朋友'),
    Friends(imageUrl: 'images/group_chat.png', name: '群聊'),
    Friends(imageUrl: 'images/tip_label_icon.png', name: '标签'),
    Friends(imageUrl: 'images/official_accounts_icon.png', name: '公众号'),
  ];



  Widget _itemForRow(BuildContext context, int index) {
    //系统图标的Cell
    if (index < _headerData.length) {
      return FriendItemCell(
        imageAssets: _headerData[index].imageUrl,
        name: _headerData[index].name,
      );
    }
    //显示剩下的Cell
    //如果当前和上一个Cell的IndexLetter一样,就不显示!
    bool _hideIndexLetter = (index - 4 > 0 &&
        _listDatas[index - 4].indexLetter == _listDatas[index - 5].indexLetter);
    return FriendItemCell(
      imageUrl: _listDatas[index - 4].imageUrl,
      name: _listDatas[index - 4].name,
      groupTitle: _hideIndexLetter ? null : _listDatas[index - 4].indexLetter,
    );
  }

  }








const INDEX_WORDS = [
  '🔍',
  '☆',
  'A',
  'B',
  'C',
  'D',
  'E',
  'F',
  'G',
  'H',
  'I',
  'J',
  'K',
  'L',
  'M',
  'N',
  'O',
  'P',
  'Q',
  'R',
  'S',
  'T',
  'U',
  'V',
  'W',
  'X',
  'Y',
  'Z'
];

