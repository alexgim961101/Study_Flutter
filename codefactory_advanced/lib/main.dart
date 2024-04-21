import 'package:codefactory_advanced/common/component/custom_test_form_field.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextFormField(
              hintText: "이메일을 입력해주세요.",
              onChanged: (String value) {},
              obscureText: false,
              autofocus: false,
            ),
            CustomTextFormField(
              hintText: "비밀번호를 입력해주세요",
              onChanged: (String value) {},
              obscureText: true,
              autofocus: false,
            )
          ],
        ),
      ),
    );
  }
}
