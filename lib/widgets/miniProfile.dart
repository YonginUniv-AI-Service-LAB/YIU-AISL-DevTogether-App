import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:devtogether/design/colors.dart';

import '../data/studentList.dart';

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
          itemCount: mentee_test_data.length,
          gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemBuilder: ((context, index) {
            dynamic mentee = mentee_test_data[index];
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
                      child: Image(image: AssetImage(mentee['image']), fit: BoxFit.cover,),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text(mentee['nickname'], style: TextStyle(
                        fontSize: 15,
                        color: ColorStyles.textBlackColor,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                  Container(
                    child: Text(mentee['info'], style: TextStyle(
                        fontSize: 10,
                        color: ColorStyles.textBodyColor
                    ),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(mentee['subject1'], style: TextStyle(
                            fontSize: 13,
                            color: ColorStyles.textBodyColor
                        ),),
                      ),
                      Container(
                        child: Text(' / ', style: TextStyle(
                            fontSize: 13,
                            color: ColorStyles.textBodyColor
                        ),),
                      ),
                      Container(
                        child: Text(mentee['subject2'], style: TextStyle(
                            fontSize: 13,
                            color: ColorStyles.textBodyColor
                        ),),
                      ),
                    ],
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
