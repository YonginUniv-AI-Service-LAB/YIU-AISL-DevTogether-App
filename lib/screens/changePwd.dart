import 'package:flutter/material.dart';
import 'package:devtogether/widgets/BaseAppBar.dart';
import 'package:devtogether/widgets/buttonWidgets/MainColorButton.dart';
import 'package:devtogether/widgets/textFieldWidgets/TextFieldButton.dart';

import '../design/colors.dart';
import '../widgets/groupWidgets/DefaultSectionTitle.dart';
import '../widgets/textFieldWidgets/UserInfoTextFieldWidget.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class ChangePasswordFormScreen extends StatefulWidget {
  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  ChangePasswordFormScreen({super.key});

  @override
  State<ChangePasswordFormScreen> createState() =>
      _ChangePasswordFormScreenState();
}

class _ChangePasswordFormScreenState extends State<ChangePasswordFormScreen> {
  String dropdownValue = list.first;

  final emailController = TextEditingController();
  final authCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            appBar: BaseAppBar(appBar: AppBar(), title: "비밀번호 변경", center: true),
            body: SafeArea(
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
                margin: const EdgeInsets.only(bottom: 30),
    child: SingleChildScrollView(
    child: Column(children: [
    DefaultSectionTitleWidget(
    title: '비밀번호 찾기',
        subtitle:
        '- 이름과 이메일을 입력\n- 기입한 정보가 가입되어 있는 회원일 경우 새로운 비밀번호 입력창이 나타납니다.',
        titleColor: ColorStyles.textBlackColor,
        subtitleColor: ColorStyles.textBodyColor),
              UserInfoTextFieldWidget(
                labelText: "이름",
                hintText: "이름(본명) 입력",
                obscureText: false,
                // controller: nameController,
                ),
                TextFieldButtonWidget(
                  labelText: '이메일',
                  hintText: "ex) yiuaisl@naver.com",
                  buttonText: '인증번호 전송',
                  onPressed: () {},
                  controller: emailController,
                ),
                TextFieldButtonWidget(
                  labelText: '인증번호',
                  hintText: "인증번호 입력",
                  buttonText: '인증번호 확인',
                  onPressed: () {},
                  controller: authCodeController,
                ),

      DefaultSectionTitleWidget(
          title: '새 비밀번호 입력',
          subtitle:
          '- 새로운 비밀번호를 입력해주세요.\n- 비밀번호는 영문자+특수문자+숫자 포함 8자리 이상 입력',
          titleColor: ColorStyles.textBlackColor,
          subtitleColor: ColorStyles.textBodyColor),
      UserInfoTextFieldWidget(
        labelText: "비밀번호",
        hintText: "영문자+특수문자+숫자 포함 8자리 이상",
        obscureText: true,
        // controller: pwdController,
      ),
      Container(
        margin: const EdgeInsets.only(bottom: 50),
        child: MainColorButtonWidget(
            title: '비밀번호 변경', onPressed: () => {print('비밀번호 변경')}),
      )
    ])
    )),
            )));

  }
}