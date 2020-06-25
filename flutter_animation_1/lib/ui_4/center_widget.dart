import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CenterWidget extends StatefulWidget {
  GlobalKey sizeKey;

  CenterWidget(this.sizeKey);

  @override
  _CenterWidgetState createState() => _CenterWidgetState();
}

class _CenterWidgetState extends State<CenterWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      key: widget.sizeKey,
      elevation: 4,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(top: 70, left: 30, right: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("REANSACTION HISTORY",
                    style: TextStyle(fontSize: 14, color: Colors.black)),
                Text("See all",
                    style: TextStyle(fontSize: 14, color: Color(0xff9cddb4))),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.arrow_upward,
                  size: 30,
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                ),
                Text(
                  'Bank deposit',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                Flexible(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "R\$500,05",
                      style: TextStyle(color: Color(0xff9cddb4), fontSize: 14),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.black,
                  size: 30,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.business,
                  size: 30,
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                ),
                Text(
                  'Bank deposit',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                Flexible(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "R\$500,05",
                      style: TextStyle(color: Color(0xff9cddb4), fontSize: 14),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.black,
                  size: 30,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.swap_horiz,
                  size: 30,
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),

                ),
                Text(
                  'Bank deposit',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                Flexible(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "R\$500,05",
                      style: TextStyle(color: Color(0xff9cddb4), fontSize: 14),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.black,
                  size: 30,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
            ),
          ],
        ),
      ),
    );
  }
}
