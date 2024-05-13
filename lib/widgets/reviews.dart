import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:devtogether/design/colors.dart';

class Reviews extends StatefulWidget implements PreferredSizeWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  State<Reviews> createState() => _ReviewsState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}

class _ReviewsState extends State<Reviews> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 5),
          width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Divider(thickness: 1, height: 1, color: ColorStyles.gray_light),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Row(
                    children: [
                      // Image(image: AssetImage('assets/image/profile.jpg'),)
                      Container(
                        width: 50,
                        height: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(125),
                          child: Image(image: AssetImage('assets/image/jjang9.jpg'), fit: BoxFit.cover,),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('산타짱구', style: TextStyle(
                              fontSize: 15,
                              color: ColorStyles.textBlackColor,
                              fontWeight: FontWeight.bold
                            ),),
                            Text('선물 받을 사람 여기여기 붙어라', style: TextStyle(
                              fontSize: 10,
                              color: ColorStyles.textBodyColor
                            ),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 70),
                  alignment: Alignment.centerLeft,
                  child: Text('맹구 선생님 콧물 너무 많이 흘려서 짜증나여;;;;;;', style: TextStyle(
                    fontSize: 15,
                    color: ColorStyles.textBlackColor
                  ),)
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(70, 5, 0, 0),
                  alignment: Alignment.centerLeft,
                  child: Text('2023-02-14', style: TextStyle(
                    fontSize: 10,
                    color: ColorStyles.textBodyColor
                  ),),
                )
              ],
            )
        );
      },
    );
  }
}
