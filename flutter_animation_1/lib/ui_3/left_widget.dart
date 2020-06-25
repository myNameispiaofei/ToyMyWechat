import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'dart:math' as math;

class LeftWidget extends StatefulWidget {
  @override
  _LeftWidgetState createState() => _LeftWidgetState();
}

class _LeftWidgetState extends State<LeftWidget> with TickerProviderStateMixin {
  List<String> _list = ["My profile", "Notifcation", "Invoice", "Home"];
  List<GlobalKey> _keys = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
  ];

  int checkIndex = 0;
  Offset checkedPositonOffset = Offset(0, 0);
  Offset lastCheckOffset = Offset(0, 0);

  Offset animationOffset = Offset(0, 0);
  Animation _animation;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    checkIndex = _list.length - 1;
    SchedulerBinding.instance.endOfFrame.then((value) {
      calcuteCheckOffset();
      addAnimation();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            width: 70,
            decoration: BoxDecoration(
              color: Color(0xffED305A),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: _buildList(),
            ),
          ),
          Positioned(
            top: animationOffset.dy,
            left: animationOffset.dx,
            child: CustomPaint(
              painter: CheckPointPainter(Offset(10, 0)),
            ),
          ),
        ],
      ),
    );
  }

  void calcuteCheckOffset() {
    lastCheckOffset = checkedPositonOffset;
    RenderBox renderBox = _keys[checkIndex].currentContext.findRenderObject();
    Offset widgetOffset = renderBox.localToGlobal(Offset(0, 0));
    Size widgetSize = renderBox.size;
    checkedPositonOffset = Offset(widgetOffset.dx + widgetSize.width,
        widgetOffset.dy + widgetSize.height);
  }

  List<Widget> _buildList() {
    List<Widget> _widget_list = [];
    _widget_list.add(
      Padding(
        padding: EdgeInsets.only(top: 50),
        child: Icon(
          Icons.more_horiz,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
    _widget_list.add(
      Padding(
        padding: EdgeInsets.only(top: 50),
        child: Icon(
          Icons.search,
          color: Colors.white,
          size: 30,
        ),
      ),
    );

    for (int i = 0; i < _list.length; i++) {
      _widget_list.add(
        Expanded(
          child: GestureDetector(
            onTap: () {
              indexChecked(i);
            },
            //选中 且动画完成
            child: VerticalText(
                _list[i],
                _keys[i],
                checkIndex == i &&
                    (_animationController != null &&
                        _animationController.isCompleted)),
          ),
        ),
      );
    }

    _widget_list.add(Padding(
      padding: EdgeInsets.only(
        top: 50,
        bottom: 50,
      ),
      child: Icon(
        Icons.map,
        color: Colors.white,
        size: 30,
      ),
    ));
    return _widget_list;
  }

  indexChecked(i) {
    if (checkIndex == i) return;
    setState(() {
      checkIndex = i;
      calcuteCheckOffset();
      addAnimation();
    });
  }

  addAnimation() {
    _animationController =
        AnimationController(duration: Duration(milliseconds: 300), vsync: this)
          ..addListener(() {
            setState(() {
              animationOffset =
                  Offset(checkedPositonOffset.dx, _animation.value);
            });
          });
    _animation = Tween(begin: lastCheckOffset.dy, end: checkedPositonOffset.dy)
        .animate(CurvedAnimation(
            parent: _animationController, curve: Curves.easeInOutBack));
    _animationController.forward();
  }
}

class VerticalText extends StatelessWidget {
  String name;
  bool checked;
  GlobalKey globalKey;

  VerticalText(this.name, this.globalKey, this.checked);

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      key: globalKey,
      quarterTurns: 3, // mub ---???????
      child: Text(
        name,
        style: TextStyle(
            color: checked ? Color(0xff98162d) : Colors.white, fontSize: 16),
      ),
    );
  }
}

class CheckPointPainter extends CustomPainter {
  double pointRadius = 5;
  double radius = 30;
  Offset offset;

  CheckPointPainter(this.offset);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..style = PaintingStyle.fill;
    double startAngle = -math.pi/2;
    double sweepAngle = math.pi;
    paint.color = Color(0xffed305a);
    //画一个 扇形
    canvas.drawArc(
        Rect.fromCircle(center: Offset(offset.dx, offset.dy), radius: radius),
        startAngle,
        sweepAngle,
        true,
        paint);

    paint.color = Color(0xff98162d);
    // 画一个圆
    canvas.drawCircle(
        Offset(offset.dx - pointRadius / 2, offset.dy - pointRadius / 2),
        pointRadius,
        paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
