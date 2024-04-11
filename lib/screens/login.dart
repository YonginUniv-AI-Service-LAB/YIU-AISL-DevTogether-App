import 'package:flutter/material.dart';
import 'package:devtogether/widgets/buttonWidgets/MainColorButton.dart';
import 'package:devtogether/widgets/buttonWidgets/MainColorOutlinedButton.dart';
import 'package:devtogether/widgets/buttonWidgets/UnderlineTextButton.dart';
import 'package:devtogether/widgets/textFieldWidgets/UserInfoTextFieldWidget.dart';

class LoginScreen extends StatelessWidget {
  final idController = TextEditingController();
  final pwdController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            bottomNavigationBar: SafeArea(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(60, 0, 60, 50),
                  child: MainColorOutLinedButtonWidget(
                    title: "회원가입",
                    onPressed: () => {},
                  ),
                )),
            // appBar: BaseAppBar(appBar: AppBar(), title: "로그인", center: true),
            body: SafeArea(
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(60, 100, 60, 30),
                child: Column(children: [
                  Container(
                    padding: const EdgeInsets.only(top: 30, bottom: 20),
                    child: Column(children: [
                      UserInfoTextFieldWidget(
                          labelText: "이메일",
                          hintText: "이메일을 입력해주세요.",
                          obscureText: false,),
                      UserInfoTextFieldWidget(
                          labelText: "비밀번호",
                          hintText: "비밀번호를 입력해주세요.",
                          obscureText: true,),
                    ]),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: MainColorButtonWidget(
                      title: "로그인",
                      onPressed: () => {},
                    ),
                  ),
                  UnderLineTextButtonWidget(
                      text: "비밀번호를 잊으셨나요?", onPressed: () {}),
                ]),
              ),
            )
        )
    );
  }
}