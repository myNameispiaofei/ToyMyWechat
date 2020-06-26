import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutteranimation1/ui_2/vacation_model.dart';

class PageViewWidget extends StatefulWidget {
  @override
  _PageViewWidgetState createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  List<VacationModel> _list = VacationModel.generate();
  PageController pageController;
  double viewportFraction =  0.8;
  // 每一个page 在屏幕里占的比例
  double pageOffset = 0.0;


  @override
  void initState() {
    super.initState();
    pageController =
        PageController(initialPage: 0, viewportFraction: viewportFraction);
    pageController.addListener(() {
      setState(() {
        pageOffset = pageController.page;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemBuilder: (context, index) {
        double scale = max(viewportFraction,
            1 - (pageOffset - index).abs() + viewportFraction);
        double angle = (pageOffset - index).abs();
        if (angle > 0.5) {
          angle = 1 - angle;
        }
        print('mub -- index :$index ,pageOffset :$pageOffset, scale:$scale, angle:$angle');
        return Container(
          padding: EdgeInsets.only(
            left: 20,
            right: 10,
            top: 100 - scale * 25,
            bottom: 50,
          ),
          child: Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(angle),
            alignment: Alignment.center,
            child: Stack(
              children: <Widget>[
                Image.asset(
                  _list[index].url,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,
                  alignment: Alignment((pageOffset - index).abs() *0.5 ,0),
                ),
                Positioned(
                  bottom: 60,
                  left: 20,
                  child: AnimatedOpacity(
                    opacity: angle == 0 ? 1 : 0,
                    duration: Duration(milliseconds: 200),
                    child: Text(
                      _list[index].name,
                      style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold, letterSpacing: 1.2),
                    ),
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
