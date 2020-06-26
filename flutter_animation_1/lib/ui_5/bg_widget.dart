import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BgWidget extends StatefulWidget {
  Function close;

  BgWidget(this.close);

  @override
  _BgWidgetState createState() => _BgWidgetState();
}

class _BgWidgetState extends State<BgWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      height: double.infinity,
      child: ListView(
        children: <Widget>[
          GestureDetector(
            onTap: widget.close,
            child: Padding(
              padding: EdgeInsets.only(
                top: 59,
              ),
              child: Row(
                children: <Widget>[
                  Container(width: 5),
                  Icon(
                    Icons.close,
                    size: 30,
                    color: Colors.white,
                  ),
                  Text(
                    'Close menu',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
          Container(height: 80),
          Row(),
          SizedBox(
            height: 50,
          ),
          _textItemWithTitle('services', fontSize: 12),
          SizedBox(
            height: 20,
          ),
          _textItemWithTitle('Sell your house'),
          SizedBox(
            height: 20,
          ),
          _textItemWithTitle('Buy a hom'),
          SizedBox(
            height: 20,
          ),
          _textItemWithTitle('Trade in your home'),
          SizedBox(
            height: 50,
          ),
          _textItemWithTitle('Customer', fontSize: 12),
          SizedBox(
            height: 20,
          ),
          _textItemWithTitle('FAQ'),
          SizedBox(
            height: 20,
          ),
          _textItemWithTitle('Reviews'),
          SizedBox(
            height: 20,
          ),
          _textItemWithTitle('Stories'),
          SizedBox(
            height: 20,
          ),
          _textItemWithTitle('Agents'),
          SizedBox(
            height: 50,
          ),
          _textItemWithTitle('about', fontSize: 12),
          SizedBox(
            height: 20,
          ),
          _textItemWithTitle('Company'),
          SizedBox(
            height: 20,
          ),
          _textItemWithTitle('Pricing'),
          SizedBox(
            height: 20,
          ),
          _textItemWithTitle('Blog'),
          SizedBox(
            height: 20,
          ),
          _textItemWithTitle('Support center'),
        ],
      ),
    );
  }

  Widget _textItemWithTitle(String title, {Color color, double fontSize}) {
    return Text(
      title,
      style: TextStyle(color: color ?? Colors.white, fontSize: fontSize ?? 16.0),
    );
  }
}
