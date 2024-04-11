import 'package:devtogether/screens/login.dart';
import 'package:devtogether/screens/register.dart';
import 'package:flutter/material.dart';
import 'package:devtogether/design/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routerConfig: routes,
      title: 'DevTogether',
      theme: ThemeData(
        primaryColor: ColorStyles.appMainColor,
        focusColor: ColorStyles.appMainColor,
        hoverColor: ColorStyles.appMainColor,
        textSelectionTheme:
        const TextSelectionThemeData(cursorColor: ColorStyles.appMainColor),
        fontFamily: 'Pretendard',
      ),
      builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: const TextScaler.linear(1.0),
          ),
          child: child!,
      ),
      debugShowCheckedModeBanner: false,
      home: RegisterScreen(key: key)
    );
  }
}
