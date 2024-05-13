import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:devtogether/design/colors.dart';

class Twit extends StatefulWidget implements PreferredSizeWidget {
  const Twit({Key? key}) : super(key: key);

  @override
  State<Twit> createState() => _TwitState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}

class _TwitState extends State<Twit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(5),
                width: 80,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorStyles.appLightColor
                ),
                child: TextButton(
                  onPressed: (){}, child: Text('받은 쪽지'),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                width: 80,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                  onPressed: (){}, child: Text('보낸 쪽지'),
                ),
              ),
            ],
          ),
          ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
            Container(

            );
          })
        ],
      ),
    );
  }
}
