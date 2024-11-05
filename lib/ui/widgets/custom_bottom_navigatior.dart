// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:lucious_beauty_app/core/constants/colors.dart';

class CustomBottomNavigator extends StatelessWidget {
  String icon;
  final onTap;
  int currentIndex;
  int indexNumber;
  CustomBottomNavigator(
      {super.key,
      required this.icon,
      required this.onTap,
      required this.currentIndex,
      required this.indexNumber});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 54,
        height: 54,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: indexNumber == currentIndex ? primaryColor : whiteColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              color: indexNumber == currentIndex ? whiteColor : greyColor,
              scale: 4.0,
            ),
            // Text('$text'),
          ],
        ),
      ),
    );
  }
}
