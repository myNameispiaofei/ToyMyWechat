import 'package:flutter/material.dart';

class DiscoverPage extends StatefulWidget {
  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('发现'),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Color.fromRGBO(223, 223, 223, 1.0),
      ),
      body:Center(
        child:_discoverBody(),
      ),
    );
  }
}

_discoverBody() {
 return Container(
   color: Color.fromRGBO(223, 223, 223, 1.0),
   child: ListView(
     children: <Widget>[
       Container(height: 20,color: Colors.red),
     ],
   ),
 );
}
