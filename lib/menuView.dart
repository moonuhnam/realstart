import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MenuView extends StatelessWidget {
  const MenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            title: Text('마이페이지'),
            onTap: () {
              print('home');
            },
            trailing: Icon(Icons.add),
          ),
          ListTile(
            leading: Icon(
              Icons.list,
              color: Colors.grey[850],
            ),
            title: Text('내구독목록'),
            onTap: () {
              print('setting');
            },
            trailing: Icon(Icons.add),
          ),
          ListTile(
            leading: Icon(
              Icons.history,
              color: Colors.grey[850],
            ),
            title: Text('이용내역'),
            onTap: () {
              print('Q&A');
            },
            trailing: Icon(Icons.add),
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.grey[850],
            ),
            title: Text('설정'),
            onTap: () {
              print('setting');
            },
            trailing: Icon(Icons.add),
          ),
          ListTile(
            leading: Icon(
              Icons.info,
              color: Colors.grey[850],
            ),
            title: Text('버전정보'),
            onTap: () {
              print('setting');
            },
            trailing: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
