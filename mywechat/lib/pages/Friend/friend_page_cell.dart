import 'package:flutter/material.dart';

class FriendItemCell extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String groupTitle;
  final String imageAssets;

  FriendItemCell({this.imageUrl, this.name, this.groupTitle, this.imageAssets});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 10),
            height: groupTitle != null ? 30 : 0,
            color: Color.fromRGBO(1, 1, 1, 0.0),
            child: groupTitle != null
                ? Text(
                    groupTitle,
                    style: TextStyle(color: Colors.grey),
                  )
                : null),
        Container(
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Container(
                width: 34,
                height: 34,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    image: DecorationImage(
                      image: imageUrl != null
                          ? NetworkImage(imageUrl)
                          : AssetImage(imageAssets),
                    )),
              ),
              Container(
                child: Text(
                  name,
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 0.5,
          color: Colors.red,
          child: Row(
            children: <Widget>[
              Container(
                width: 50,
                color: Colors.white,
              )
            ],
          ),
        ) //
      ],
    );
  }
}
