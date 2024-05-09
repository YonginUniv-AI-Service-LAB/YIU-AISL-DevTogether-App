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
              Icons.face,
              color: ColorStyles.textBlackColor,),
            title: Text('학생 찾기'),
            onTap: (){
              print('1번 메뉴 클릭');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.school,
              color: ColorStyles.textBlackColor,),
            title: Text('선생님 찾기'),
            onTap: (){
              print('2번 메뉴 클릭');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.people,
              color: ColorStyles.textBlackColor,),
            title: Text('커뮤니티'),
            onTap: (){
              print('3번 메뉴 클릭');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.campaign,
              color: ColorStyles.textBlackColor,),
            title: Text('공지사항'),
            onTap: (){
              print('3번 메뉴 클릭');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.quiz,
              color: ColorStyles.textBlackColor,),
            title: Text('자주묻는질문'),
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