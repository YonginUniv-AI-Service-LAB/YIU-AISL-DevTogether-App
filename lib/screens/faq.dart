import 'package:devtogether/widgets/appbarTitle.dart';
import 'package:devtogether/widgets/faqExpansionPanel.dart';
import 'package:devtogether/widgets/groupWidgets/DefaultSectionTitle.dart';
import 'package:flutter/material.dart';
import 'package:devtogether/design/colors.dart';

import '../widgets/slideMenu.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: HeaderTitleAppBar(
          title: 'DevTogether',
          appBar: AppBar(

          ),
          center: true,
        ),
        endDrawer: SlideMenu(),
        body: SafeArea(
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
            margin: const EdgeInsets.only(bottom: 30),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  DefaultSectionTitleWidget(title: '자주묻는 질문(FAQ)', subtitle: '- 자주 묻는 질문에 대한 안내', titleColor: ColorStyles.textBlackColor, subtitleColor: ColorStyles.textBodyColor),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: FaqExpansionPanel(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
