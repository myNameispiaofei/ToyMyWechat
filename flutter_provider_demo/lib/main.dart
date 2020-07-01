import 'package:flutter/material.dart';
import 'package:flutterproviderdemo/ThemeModel.dart';
import 'package:flutterproviderdemo/home_page.dart';
import 'package:flutterproviderdemo/router_test/router_page1.dart';
import 'package:provider/provider.dart';
import 'package:flutterproviderdemo/sliver/home_page.dart' as sliver;

//void main() => runApp(
//      ChangeNotifierProvider<ThemeModel>(
//        create: (_) {
//          return ThemeModel(ThemeType.dark);
//        },
//        child: MyApp(),
//      ),
//);
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      theme: Provider.of<ThemeModel>(context, listen: false).themeData,
//      //home: sliver.Homepage(),
//      home: HomePage(),
//    );
//  }
//}


void main() => runApp(
  FutureProvider<String>(
    create: (_) {
      return Future.delayed(Duration(seconds: 2), () {
        return "this is future provider";
      });
    },
    initialData: "this is a initialData from futureprovider",
    child: StreamProvider<int>(
      create: (_) {
        return Stream.periodic(Duration(milliseconds: 500), (v) {
          return v * 3;
        }).take(100);
      },
      lazy: false,
      updateShouldNotify: (_, __) {
        return true;
      },
      child: ChangeNotifierProvider<ThemeModel>(
        create: (_) {
          return ThemeModel(ThemeType.dark);
        },
        child: MyApp(),
      ),
    ),
  ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ThemeModel>(context, listen:false).themeData,
//      home:RouterPage1(),
      routes: {
        '/':(context)=> RouterPage1(),
        '/page2':(context)=> RouterPage2(),
        '/page3':(context)=> RouterPage3(),
      },
    );
  }
}
