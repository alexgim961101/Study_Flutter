import 'package:codefactory_advanced/common/const/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final String? errorText;
  final bool obscureText;
  final bool autofocus;
  final ValueChanged<String>? onChanged;

  const CustomTextFormField(
      {super.key,
      this.hintText,
      this.errorText,
      this.obscureText = false,
      this.autofocus = false,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    // UnderlineInputBorder가 기본값
    const baseBorder = OutlineInputBorder(
        borderSide: BorderSide(color: INPUT_BORDER_COLOR, width: 1.0));

    return TextFormField(
      cursorColor: PRIMARY_COLOR,
      obscureText: obscureText,
      autofocus: autofocus,
      onChanged: onChanged,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20),
          hintText: hintText,
          errorText: errorText,
          hintStyle: const TextStyle(color: BODY_TEXT_COLOR, fontSize: 14.0),
          // input field의 배경색
          fillColor: INPUT_BG_COLOR,
          // true : 배경색 적용, false : 배경색 적용 X
          filled: true,
          // 모든 input 상태의 기본 스타일 세팅
          border: baseBorder,
          focusedBorder: baseBorder.copyWith(
              borderSide:
                  baseBorder.borderSide.copyWith(color: PRIMARY_COLOR))),
    );
  }
}
