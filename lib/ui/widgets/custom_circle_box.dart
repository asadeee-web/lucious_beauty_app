import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucious_beauty_app/core/constants/colors.dart';

class CustomCircleBox extends StatelessWidget {
  VoidCallback? onTap;
  Image image;
  CustomCircleBox({super.key, required this.image, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: 35.w,
          height: 35.w,
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: lightWhiteColor),
          child: image),
    );
  }
}
