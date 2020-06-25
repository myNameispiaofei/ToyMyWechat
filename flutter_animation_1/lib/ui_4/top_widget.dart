import 'package:flutter/material.dart';

class TopWidget extends StatefulWidget {
  GlobalKey sizeKey;

  TopWidget(this.sizeKey);

  @override
  _TopWidgetState createState() => _TopWidgetState();
}

class _TopWidgetState extends State<TopWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      key: widget.sizeKey,
      padding: const EdgeInsets.only(top: 59, left: 100),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff6187e7),
              Color(0xff9f96e0),
              Color(0xffd7a7da),
            ],
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 15),
                  child: Text(
                    '我的(My personal)\n prepaid card',
                    style: TextStyle(
                        height: 1.5,
                        letterSpacing: 1.5,
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 130, top: 20),
                  child: Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 20),
                  child: Text.rich(
                    TextSpan(
                      text: "Banlnce\n",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                      children: [
                        TextSpan(
                          text: '\$4.321,',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        TextSpan(
                          text: '32,',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
