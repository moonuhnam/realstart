import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:naver_map_plugin/naver_map_plugin.dart';
import 'package:realstart/menuView.dart';
import 'naverMapShow.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red[200],
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
          ],
          title: Text('가보자')),

      body: NaverMapShow(),

      drawer: MenuView()
    ));
  }
}
