import 'package:flutter/material.dart';
import 'package:lucious_beauty_app/core/constants/colors.dart';
import 'package:lucious_beauty_app/core/constants/textstyles.dart';

// ignore: must_be_immutable
class CustomTextfeild extends StatelessWidget {
  String hintText;
  CustomTextfeild({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: textFeildBorderColor, width: 1)),
        filled: true,
        focusColor: textFeildColor,
        enabledBorder: InputBorder.none,
        hintStyle: style14,
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(color: textFeildBorderColor, width: 1)),
        fillColor: textFeildColor,
        hintText: hintText,
      ),
    );
  }
}
