import 'package:flutter/material.dart';

double ScreenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double ScreenHeight(BuildContext context) => MediaQuery.of(context).size.height;


class FriendIndexbar extends StatefulWidget {
  final void Function(String str) indexBarCallBack;
  FriendIndexbar({this.indexBarCallBack});
  @override
  _FriendIndexbarState createState() => _FriendIndexbarState();
}

class _FriendIndexbarState extends State<FriendIndexbar> {

  Color _bkColor = Color.fromRGBO(1, 1, 1, 0.0);
  Color _textColor = Colors.black;
  double _indicatorY = 0.0;
  String _indicatorText = 'A';
  bool _indocatorHidden = true;

  @override
  Widget build(BuildContext context) {
    List<Widget> words = [];
    for (int i = 0; i < INDEX_WORDS.length; i++) {
      words.add(Expanded(
        child: Text(
          INDEX_WORDS[i],
          style: TextStyle(fontSize: 10, color: _textColor),
        ),
      ));
    }
    return Positioned(
      right: 0.0,
      height: ScreenHeight(context) / 2,
      top: ScreenHeight(context) / 8,
      width: 120,
      child: Row(
        children: <Widget>[
          Container(
            width: 100,
          ),
          GestureDetector(
            child: Container(
               width: 20,
              color: _bkColor,
              child: Column(
                children: words,
              ),
            ),
          )
        ],
      ),
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


