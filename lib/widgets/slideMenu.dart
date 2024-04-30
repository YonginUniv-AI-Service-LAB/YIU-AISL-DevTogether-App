import 'package:flutter/material.dart';
import 'package:devtogether/design/colors.dart';

class SlideMenu extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/image/profile.jpg'),
            ),
            // otherAccountsPictures: <Widget>[], 깃과 같은 이미지 넣을 건지
            accountName: Text('계정주'),
            accountEmail: Text('계정주 이메일'),
            decoration: BoxDecoration(
              color: ColorStyles.appMainColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0)
              )
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: ColorStyles.textBlackColor,),
            title: Text('1번 메뉴'),
            onTap: (){
              print('1번 메뉴 클릭');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: ColorStyles.textBlackColor,),
            title: Text('2번 메뉴'),
            onTap: (){
              print('2번 메뉴 클릭');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: ColorStyles.textBlackColor,),
            title: Text('3번 메뉴'),
            onTap: (){
              print('3번 메뉴 클릭');
            },
          ),
        ],
      )
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}