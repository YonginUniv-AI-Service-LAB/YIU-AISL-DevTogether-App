import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:devtogether/design/colors.dart';

class MiniProfile extends StatefulWidget implements PreferredSizeWidget {
  const MiniProfile({Key? key}) : super(key: key);

  @override
  State<MiniProfile> createState() => _MiniProfileState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}

class _MiniProfileState extends State<MiniProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorStyles.gray_light,
      child: GridView.builder(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          itemCount: 90,
          gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemBuilder: ((context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffffffff),
              ),
              padding: const EdgeInsets.symmetric(vertical: 5),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(125),
                      child: Image(image: AssetImage('assets/image/jjang9.jpg'), fit: BoxFit.cover,),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text('산타짱구', style: TextStyle(
                        fontSize: 15,
                        color: ColorStyles.textBlackColor,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                  Container(
                    child: Text('선물 받을 사람 여기여기 붙어라', style: TextStyle(
                        fontSize: 10,
                        color: ColorStyles.textBodyColor
                    ),),
                  ),
                  Container(
                    child: Text('자바 / 자바스프링', style: TextStyle(
                        fontSize: 13,
                        color: ColorStyles.textBodyColor
                    ),),
                  ),
                ],
              ),
            );
          }
       )
      ),
    );
  }
}
