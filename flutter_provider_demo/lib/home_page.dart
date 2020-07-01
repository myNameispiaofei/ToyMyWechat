import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproviderdemo/ThemeModel.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    print('hellll  rebuild2222!!!');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('主页！'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            FlatButton(
              onPressed: () {
                Provider.of<ThemeModel>(context, listen: false).reverse();
              },
              child: Consumer<ThemeModel>(
                builder: (context, t, child) {
                  String result = "切换成";
                  if (t.currentType == ThemeType.light) {
                    result += '黑夜模式';
                  } else {
                    result += '白天模式';
                  }
                  result += t.text;
                  return Text(result);
                },
              ),
            ),
//            wwwwwtext(),
            wwwwwtext4(),
            FlatButton(
              onPressed: () {
                Provider.of<ThemeModel>(context, listen: false).updateText('');
              },
              child: Selector<ThemeModel, ThemeType>(
                builder: (context, type, child) {
                  String result = "切换成!@!@!!";
                  if (type == ThemeType.dark) {
                    result += "白天模式";
                  } else {
                    result += "夜间模式";
                  }
                  return Text(result);
                },
                selector: (context, themeModel) {
                  return themeModel.currentType;
                },
                shouldRebuild: (pre, next) {
                  return pre != next;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  wwwwwtext() {
    print('hellll  rebuild1111111!!!');
    return Container(
      color: Colors.grey,
      child: Text(
         'hello new world',
        style: TextStyle(fontSize: 25),
      ),
    );
  }

  wwwwwtext1() {
    print('hellll  rebuildCCCCCC!!!');
    return Container(
      color: Colors.grey,
      child: Text(
        Provider.of<ThemeModel>(context, listen: false).text,
        style: TextStyle(fontSize: 25),
      ),
    );
  }

  wwwwwtext3() {
    print('hellll  rebuildEEE!!!');
    return Container(
      color: Colors.grey,
      child: Selector<ThemeModel, String>(
        builder: (context, text, child) {
          print('hellll  rebuild444444!!!${context.widget.runtimeType}');
          return Text(text, style: TextStyle(fontSize: 25));
        },
        selector: (context, themeModel) {
          return themeModel.text;
        },
        shouldRebuild: (pre, next) {
          return pre != next;
        },
      ),
    );
  }

  wwwwwtext4() {
    print('hellll  rebuildEEE!!!');
    return Container(child:
    Consumer<ThemeModel>(
      builder: (context, t, child) {
        print('hellll  rebuild33333!!!${context.widget.runtimeType}');
        return Column(
          children: <Widget>[
            Text(t.text, style: TextStyle(fontSize: 25)),
            wwwwwtext(),
          ],
        );
      },
    ));
  }
}
