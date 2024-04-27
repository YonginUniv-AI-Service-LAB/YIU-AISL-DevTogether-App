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
                        UserInfoTextFieldWidget(
                          labelText: "나이",
                          hintText: "나이 입력",
                          obscureText: true,
                          // controller: pwdController,
                        ),
                        UserInfoTextFieldWidget(
                          labelText: "성별",
                          hintText: "남자일 경우 '남자', 여자일 경우 '여자' 입력 (작은 따옴표 제외)",
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
                            title: '멘토 or 멘티',
                            subtitle:
                            '- 멘토/멘티 선택\n- 멘토와 멘티를 다 선택하고 싶다면 멘토/멘티를 선택\n- 학력은 최종 학력을 기준으로 입력해주세요.',
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
                            items: userStatus.keys.toList(),
                            hintText: '학적 상태',
                            initialItem: statusValue,
                            onChanged: (value) {
                              statusValue = value;
                            }),
                      ]),
                    ),

                    // 수업 지역 선택
                    Container(
                      margin: const EdgeInsets.only(bottom: 50),
                      child: Column(children: [
                        DefaultSectionTitleWidget(
                            title: '수업 지역',
                            subtitle:
                            '- 수업 지역 선택\n- 첫번째 선택은 필수\n- 두번째, 세번째 지역 선택은 옵션입니다.',
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
                            items: userStatus.keys.toList(),
                            hintText: '학적 상태',
                            initialItem: statusValue,
                            onChanged: (value) {
                              statusValue = value;
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