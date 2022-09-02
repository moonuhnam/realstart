import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
              actions: [IconButton(onPressed: () {}, icon: Icon(Icons.notifications))],
              title: Text('바보')),
          body: Container(
            child: Text('어어'),
          ),drawer: Drawer(//이게 그 삼선 눌르면 나오게 하는거
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/'),//assets 대신에 이미지 넣고 싶은거 넣으면 됨
                  backgroundColor: Colors.white,
                ),
                accountName: Text('정학'),
                accountEmail: Text('njh20000@naver.com'),
                onDetailsPressed: (){//이게 쪼꼬미 삼각형
                  print('arrow');
                },
                decoration: BoxDecoration(//박스 디자인
                    color:Colors.red[200],
                    borderRadius: BorderRadius.only(//이건 걍 멋으로 하단부분 둥글게함
                        bottomLeft: Radius.circular(40.0),
                        bottomRight: Radius.circular(40.0)
                    )
                ),
              )
            ],
          ),
        ),
        ));
  }
}
