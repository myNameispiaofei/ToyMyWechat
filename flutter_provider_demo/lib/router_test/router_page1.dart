import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
class RouterPage1 extends StatefulWidget {
  @override
  _RouterPage1State createState() => _RouterPage1State();
}

class _RouterPage1State extends State<RouterPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RouterPage111111111"),
      ),
      body: Container(
        color: randomColor(),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            FlatButton(
              color: Colors.blue,
              onPressed: (){
                Navigator.push(context, CupertinoPageRoute(builder: (context){
                  return RouterPage2();
                }));
              },
            ),
            FlatButton(
              color: Colors.green,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return RouterPage2();
                }));
              },
            ),

          ],
        ),
      ),
    );
  }

  Color randomColor() {
    return Color.fromARGB(255, Random().nextInt(256)+0, Random().nextInt(256)+0, Random().nextInt(256)+0);
  }
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('my page111111 dispose');
  }
}



class RouterPage2 extends StatefulWidget {
  @override
  _RouterPage2State createState() => _RouterPage2State();
}

class _RouterPage2State extends State<RouterPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RouterPage2222222"),
      ),
      body: Container(
        color: randomColor(),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            FlatButton(
              color: Colors.blue,
              onPressed: (){
//                Navigator.push(context, CupertinoPageRoute(builder: (context){
//                  return RouterPage3();
//                }));
//                 Navigator.of(context).pushNamedAndRemoveUntil('/page3', (route) => false);
                 Navigator.of(context).pushReplacementNamed('/page3');
              },
            ),
            FlatButton(
              color: Colors.green,
              onPressed: (){
//                Navigator.push(context, MaterialPageRoute(builder: (context){
//                  return RouterPage3();
//                }));
//                Navigator.of(context).pushReplacementNamed("/page3");
                Navigator.popAndPushNamed(context, 'page3');

              },
            ),

          ],
        ),
      ),
    );
  }

  Color randomColor() {
    return Color.fromARGB(255, Random().nextInt(256)+0, Random().nextInt(256)+0, Random().nextInt(256)+0);
  }

  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('my page22222222 dispose');
  }
}


class RouterPage3 extends StatefulWidget {
  @override
  _RouterPage3State createState() => _RouterPage3State();
}

class _RouterPage3State extends State<RouterPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RouterPage3333333"),
      ),
      body: Container(
        color: randomColor(),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              color: Colors.blue,
              onPressed: (){
//                Navigator.push(context, CupertinoPageRoute(builder: (context){
//                  return RouterPage1();
//                }));
//                '/page2':(context)=> RouterPage1(),
                Navigator.pushNamed(context,  '/page2');
              },
            ),
            FlatButton(
              color: Colors.green,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return RouterPage1();
                }));
              },
            ),

          ],
        ),
      ),
    );
  }

  Color randomColor() {
    return Color.fromARGB(255, Random().nextInt(256)+0, Random().nextInt(256)+0, Random().nextInt(256)+0);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('my page333333 dispose');
  }
}