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
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
          ],
          title: Text('가보자')),
      body: Container(
        child: Text('화이ㅇ'),
      ),
      drawer: Drawer(
        //이게 그 삼선 눌르면 나오게 하는거
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/me.jpeg'),
                //assets 대신에 이미지 넣고 싶은거 넣으면 됨
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/IMG_4086.jpeg'),
                  backgroundColor: Colors.white,
                )
              ],
              accountName: Text('정학'),
              accountEmail: Text('njh20000@naver.com'),
              onDetailsPressed: () {
                //이게 쪼꼬미 삼각형
                print('click');
              },
              decoration: BoxDecoration(
                  //박스 디자인
                  color: Colors.red[200],
                  borderRadius: BorderRadius.only(
                      //이건 걍 멋으로 하단부분 둥글게함
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0))),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[850],
              ),
              title: Text('Home'),
              onTap: () {
                print('home');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey[850],
              ),
              title: Text('setting'),
              onTap: () {
                print('setting');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: Text('Q&A'),
              onTap: () {
                print('Q&A');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    ));
  }
}
