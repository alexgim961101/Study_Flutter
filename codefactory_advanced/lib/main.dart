import 'package:codefactory_advanced/common/component/custom_test_form_field.dart';
import 'package:codefactory_advanced/user/view/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'NotoSans'),
        debugShowCheckedModeBanner: false,
        home: const Scaffold(
          backgroundColor: Colors.white,
          body: LoginScreen(),
        ));
  }
}
