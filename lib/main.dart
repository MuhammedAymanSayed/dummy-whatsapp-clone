import 'package:flutter/material.dart';
import 'home.dart';
import 'privatetext.dart';

void main() {
  runApp(
    new MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
        primaryColor: Color(0xff075e54),
      ),
      home: Home(),
      routes: <String,WidgetBuilder>{
        "/Privatetext" : (BuildContext context) => new Privatetext(),
      },
    )
  );
}