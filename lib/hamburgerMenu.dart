import 'package:flutter/material.dart';

class HamburgerMenu extends StatelessWidget {
  const HamburgerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader( //Drawer 사용자 정보 헤더
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/bunny.gif'),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.png'),
                )
              ],
              accountEmail: Text('dev.yakkuza@gmail.com'),
              accountName: Text('Dev Yakuza'),
              onDetailsPressed: () {
                print('press details');
              },
              decoration: BoxDecoration(
                  color: Colors.blue[300],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  )),
            ),
            Container(
              child: Text(
                'Sample App',
                style: TextStyle(fontSize: 30),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
                leading: Icon(
                  Icons.favorite,
                  color: Colors.deepOrange,
                ),
                title: Text('즐겨찾기'),
                onTap: () {
                  print('즐겨찾기 click');
                }
            ),
            Divider(
              height: 10,
            ),
            ListTile(
              leading: Icon(
                Icons.add_alert_sharp,
                color: Colors.blue,
              ),
              title: Text('환경설정'),
              onTap: (){
                print('환경설정 click');
              },
            ),
          ],
        ),
      ),
    );
  }
}
