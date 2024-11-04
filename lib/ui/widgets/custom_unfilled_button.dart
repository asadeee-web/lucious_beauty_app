import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucious_beauty_app/core/constants/colors.dart';
import 'package:lucious_beauty_app/core/constants/textstyles.dart';

// ignore: must_be_immutable
class CustomUnfilledButton extends StatelessWidget {
  VoidCallback? onTap;
  String text;
  CustomUnfilledButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50.h,
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            border: Border.all(color: primaryColor, width: 1)),
        child: Center(
          child: Text(
            text,
            style: style16.copyWith(
                color: primaryColor, fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
