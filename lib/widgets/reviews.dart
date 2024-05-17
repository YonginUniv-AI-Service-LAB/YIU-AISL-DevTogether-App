import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:devtogether/design/colors.dart';

import '../data/reviewList.dart';

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
      itemCount: review_test_data.length,
      itemBuilder: (context, index) {
        dynamic review = review_test_data[index];
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
                      Container(
                        width: 50,
                        height: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(125),
                          child: Image(image: AssetImage(review['image']), fit: BoxFit.cover,),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(review['nickname'], style: TextStyle(
                              fontSize: 15,
                              color: ColorStyles.textBlackColor,
                              fontWeight: FontWeight.bold
                            ),),
                            Text(review['info'], style: TextStyle(
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
                  child: Text(review['content'], style: TextStyle(
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
