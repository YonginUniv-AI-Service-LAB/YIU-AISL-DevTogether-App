import 'dart:html';
import 'dart:math';
import 'dart:ui';

import 'package:devtogether/widgets/miniProfile.dart';
import 'package:devtogether/widgets/reviews.dart';
import 'package:devtogether/widgets/twit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:devtogether/design/colors.dart';
import 'package:flutter/widgets.dart';

import '../widgets/BaseAppBar.dart';
import '../widgets/slideMenu.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> with SingleTickerProviderStateMixin {
  late TabController tabController = TabController(
      length: 4, vsync: this, initialIndex: 0,
    animationDuration: const Duration(milliseconds: 700),
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: BaseAppBar(appBar: AppBar(), title: "DevTogether", center: true),
        endDrawer: SlideMenu(),
        body: Container(
              margin: EdgeInsets.fromLTRB(24, 10, 24, 0),
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 88,
                              height: 32,
                              child: Row(
                                children: [
                                  Container(
                                    child: IconButton(onPressed: (){}, icon: Icon(Icons.school_outlined)),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Text('1,253')
                                  )
                                ],
                              ),
                            ),
                            Container(
                                width: 120,
                                height: 120,
                                child: Container(
                                    color: ColorStyles.appBackgroundColor,
                                    padding: EdgeInsets.all(5),
                                    child: Image(image: AssetImage('assets/image/profile.jpg'),)
                                )
                            ),
                            Container(
                              width: 88,
                              height: 32,
                              child: Row(
                                children: [
                                  Container(
                                    child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border)),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Text('1,253')
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Column(
                              children: [
                                Text('꽃을 든 맹구', style: TextStyle(
                                  color: ColorStyles.textBlackColor,
                                  fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  fontFamily: 'Pretandard'
                                ),),
                                Text('멘토', style: TextStyle(
                                  color: ColorStyles.textBlackColor,
                                  fontFamily: 'Pretandard',
                                  fontWeight: FontWeight.bold,
                                ),),
                                Text('자바 / 자바스프링 / 백엔드', style: TextStyle(
                                    color: ColorStyles.textBlackColor,
                                    fontFamily: 'Pretandard'
                                ),)
                              ],
                            ),
                          ),
                          DefaultTabController(
                            length: 4,
                            child: Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: TabBar(
                                      controller: tabController,
                                      tabs: const [
                                        Tab(text: "Reviews"),
                                        Tab(text: "My Scrap"),
                                        Tab(text: "My Student"),
                                        Tab(text: "My Twit"),
                                      ]
                                    ),
                                  ),
                                  Expanded(
                                    child: TabBarView(
                                      controller: tabController,
                                      children: [
                                        Reviews(),
                                        Container(
                                          width: 10,
                                          color: const Color.fromRGBO(91, 91, 91, 1),
                                          child: const Center(
                                            child: Text(
                                              'Box',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 56,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        MiniProfile(),
                                        Twit(),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
    );
  }
}
