import 'package:flutnew/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  final String hintText;
  final OutlineInputBorder? border,
      enabledBorder,
      focusedBorder,
      errorBorder,
      focusedErrorBorder;
  final double width, height;
  final TextEditingController controller;
  const PasswordTextField({
    super.key,
    required this.hintText,
    required this.height,
    required this.controller,
    this.border,
    this.enabledBorder,
    this.focusedBorder,
    this.errorBorder,
    this.focusedErrorBorder,
    required this.width,
  });
  @override
  PasswordTextFieldState createState() => PasswordTextFieldState();
}

class PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: TextFormField(
          obscureText: _obscureText,
          controller: widget.controller,
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColor.kGreyColor,
          ),
          decoration: InputDecoration(
            fillColor: AppColor.kLightAccentColor,
            filled: true,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
            suffixIcon: IconButton(
              icon: Icon(
                _obscureText ? Icons.visibility : Icons.visibility_off,
                color: AppColor.kGreyColor,
                size: 24,
              ),
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
            ),
            hintText: widget.hintText,
            hintStyle: TextStyle(
              fontFamily: 'Inter',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColor.kGreyColor,
            ),
            border: widget.border,
            enabledBorder: widget.enabledBorder,
            focusedBorder: widget.focusedBorder,
            errorBorder: widget.errorBorder,
            focusedErrorBorder: widget.focusedErrorBorder,
          )),
    );
  }
}
