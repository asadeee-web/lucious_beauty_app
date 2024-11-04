import 'package:flutter/material.dart';
import 'package:lucious_beauty_app/core/constants/colors.dart';

BoxDecoration boxDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(12),
  color: whiteColor,
);

BoxDecoration shadow_boxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(6),
    color: whiteColor,
    boxShadow: [
      BoxShadow(blurRadius: 4, spreadRadius: 0, offset: Offset(0, 4))
    ]);
