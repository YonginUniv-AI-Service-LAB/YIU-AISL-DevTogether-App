// import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:devtogether/data/majorList.dart';
// import 'package:devtogether/data/userInfo.dart';
import 'package:devtogether/design/colors.dart';
import 'package:devtogether/widgets/BaseAppBar.dart';
import 'package:devtogether/widgets/buttonWidgets/MainColorButton.dart';
import 'package:devtogether/widgets/groupWidgets/DefaultSectionTitle.dart';
import 'package:devtogether/widgets/textFieldWidgets/DropdownList.dart';
import 'package:devtogether/widgets/textFieldWidgets/TextFieldButton.dart';
import 'package:devtogether/widgets/textFieldWidgets/UserInfoTextFieldWidget.dart';

import '../data/subjectList.dart';
import '../data/userInfo.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final emailController = TextEditingController();
  final authCodeController = TextEditingController();
  final nameController = TextEditingController();
  final pwdController = TextEditingController();

  String roleValue = userRole.keys.toList().first;
  String gradeValue = userGradeList.first;
  String statusValue = userStatus.keys.toList().first;

  String? subject1Value;
  String subject2Value = subjectListIncludeNot.keys.first;
  String subject3Value = subjectListIncludeNot.keys.first;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            appBar: BaseAppBar(appBar: AppBar(), title: "회원가입", center: true),
            body: SafeArea(
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(50, 30, 50, 0),
                child: SingleChildScrollView(
                  child: Column(children: [
                    // 기본정보 입력 섹션
                    Container(
                      margin: const EdgeInsets.only(bottom: 50),
                      child: Column(children: [
                        DefaultSectionTitleWidget(
                            title: '기본정보',
                            subtitle:
                            '- 이메일을 입력\n- 이메일 입력 후 이메일 인증 진행 필수\n- 비밀번호는 영문자+특수문자+숫자 포함 8자리 이상 입력',
                            titleColor: ColorStyles.textBlackColor,
                            subtitleColor: ColorStyles.textBodyColor),
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
                        UserInfoTextFieldWidget(
                          labelText: "이름",
                          hintText: "이름(본명) 입력",
                          obscureText: false,
                          // controller: nameController,
                        ),
                        UserInfoTextFieldWidget(
                          labelText: "비밀번호",
                          hintText: "영문자+특수문자+숫자 포함 8자리 이상",
                          obscureText: true,
                          // controller: pwdController,
                        ),
                        UserInfoTextFieldWidget(
                          labelText: "닉네임",
                          hintText: "닉네임 입력",
                          obscureText: true,
                          // controller: pwdController,
                        ),
                      ]),
                    ),

                    // 학적 입력 섹션
                    Container(
                      margin: const EdgeInsets.only(bottom: 50),
                      child: Column(children: [
                        DefaultSectionTitleWidget(
                            title: '학적',
                            subtitle:
                            '- 학생은 학년과 현재 학적 상태를 정확하게 선택\n- 교수 및 직원은 해당없음을 선택',
                            titleColor: ColorStyles.textBlackColor,
                            subtitleColor: ColorStyles.textBodyColor),
                        DropDownListWidget(
                            margin: const EdgeInsets.only(bottom: 15),
                            items: userRole.keys.toList(),
                            hintText: '구분',
                            initialItem: roleValue,
                            onChanged: (value) {
                              roleValue = value;
                            }),
                        DropDownListWidget(
                            margin: const EdgeInsets.only(bottom: 15),
                            items: userGradeList,
                            hintText: '학년',
                            initialItem: gradeValue,
                            onChanged: (value) {
                              gradeValue = value;
                            }),
                        DropDownListWidget(
                            margin: const EdgeInsets.only(bottom: 15),
                            items: userStatus.keys.toList(),
                            hintText: '학적 상태',
                            initialItem: statusValue,
                            onChanged: (value) {
                              statusValue = value;
                            }),
                      ]),
                    ),

                    // 전공 입력 섹션
                    Container(
                      margin: const EdgeInsets.only(bottom: 50),
                      child: Column(children: [
                        DefaultSectionTitleWidget(
                            title: '전공',
                            subtitle:
                            '- 단일전공 학생은 전공1만 선택, 전공2와 전공3은 해당없음을 선택\n- 복수전공, 부전공 학생은 전공2와 전공3을 선택\nex) 주전공+부전공 학생은 전공1에 주전공, 전공2에 부전공 선택',
                            titleColor: ColorStyles.textBlackColor,
                            subtitleColor: ColorStyles.textBodyColor),
                        DropDownListWidget(
                            margin: const EdgeInsets.only(bottom: 15),
                            items: subjectList.keys.toList(),
                            hintText: '전공1',
                            initialItem: null,
                            onChanged: (value) {
                              subject1Value = value;
                            }),
                        DropDownListWidget(
                            margin: const EdgeInsets.only(bottom: 15),
                            items: subjectListIncludeNot.keys.toList(),
                            hintText: '전공2',
                            initialItem: subject2Value,
                            onChanged: (value) {
                              subject2Value = value;
                            }),
                        DropDownListWidget(
                            margin: const EdgeInsets.only(bottom: 15),
                            items: subjectListIncludeNot.keys.toList(),
                            hintText: '전공3',
                            initialItem: subject3Value,
                            onChanged: (value) {
                              subject3Value = value;
                            }),
                      ]),
                    ),

                    Container(
                      margin: const EdgeInsets.only(bottom: 50),
                      child: MainColorButtonWidget(
                          title: '회원가입', onPressed: () => {print('회원가입')}),
                    )
                  ]),
                ),
              ),
            )
        )
    );
  }
}