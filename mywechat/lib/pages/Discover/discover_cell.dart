
import 'package:flutter/material.dart';

class DiscoverCell extends StatefulWidget {
  final String title;
  final String subTitle;
  final String imageName;
  final String subImageName;
  DiscoverCell({this.title ,this.subTitle, this.imageName, this.subImageName});
  @override
  _DiscoverCellState createState() => _DiscoverCellState();
}

class _DiscoverCellState extends State<DiscoverCell> {
  Color _currentColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      },
      child: Container(
        color: _currentColor,
        height: 54,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Image(
                    image: AssetImage(widget.imageName),
                    width: 20,
                  ),
                  Container(width: 20),
                  Text(widget.title),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  widget.subTitle != null ? Text(widget.subTitle) : Text(""),
                  widget.subImageName != null ? Image(
                    image:  AssetImage(widget.subImageName),
                  ) : Container(),
                  Image(
                    image:  AssetImage('images/icon_right.png'),
                    width: 15,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
