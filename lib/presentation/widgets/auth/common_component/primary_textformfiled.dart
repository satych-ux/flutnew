import 'package:flutnew/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PrimaryTextFormField extends StatelessWidget {
  const PrimaryTextFormField(
      {super.key,
      required this.hintText,
      this.border,
      this.enabledBorder,
      this.focusedBorder,
      this.errorBorder,
      this.keyboardType,
      this.focusedErrorBorder,
      required this.controller,
      required this.width,
      required this.height,
      this.hintTextColor,
      this.fillColor,
      this.onChanged,
      this.onTapOutside,
      this.prefixIcon,
      this.prefixIconColor,
      this.inputFormatters,
      this.borderRadius = 8});
  final double? borderRadius;
  final Color? fillColor;
  final String hintText;
  final OutlineInputBorder? border,
      enabledBorder,
      focusedBorder,
      errorBorder,
      focusedErrorBorder;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? prefixIcon;
  final Function(PointerDownEvent)? onTapOutside;
  final Function(String)? onChanged;
  final double width, height;
  final TextEditingController controller;
  final Color? hintTextColor, prefixIconColor;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: AppColor.kLightAccentColor,
        borderRadius: BorderRadius.circular(borderRadius!),
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        style: TextStyle(
          fontFamily: 'Inter',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColor.kGreyColor,
        ),
        decoration: InputDecoration(
          fillColor: fillColor ?? AppColor.kLightAccentColor,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(
            fontFamily: 'Inter',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: hintTextColor ?? AppColor.kGreyColor,
          ),
          prefixIcon: prefixIcon,
          prefixIconColor: prefixIconColor,
          border: border,
          enabledBorder: enabledBorder,
          focusedBorder: focusedBorder,
          errorBorder: errorBorder,
          focusedErrorBorder: focusedErrorBorder,
        ),
        onChanged: onChanged,
        inputFormatters: inputFormatters,
        onTapOutside: onTapOutside,
      ),
    );
  }
}
