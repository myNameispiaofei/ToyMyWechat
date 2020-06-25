import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutteranimation1/ui_1/detail_page.dart';
import 'package:flutteranimation1/ui_1/travel_bean.dart';

class MostPopularWidget extends StatelessWidget {
  List<TravelBean> _list = TravelBean.generateMostPopularBean();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 15),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        var bean = _list[index];
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return DetailPage(bean);
            }));
          },
          child: Hero(
            tag: bean.url,
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 30, right: 10),
                  child: ClipRRect(
                    child: Image.asset(bean.url, width: 170, fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                Positioned(
                  bottom: 50,
                  left: 15,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Material(
                        child: Text(
                          bean.location,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        color: Colors.transparent,
                      ),
                      Material(
                        child: Text(
                          bean.name,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        color: Colors.transparent,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: _list.length,
    );
  }
}
