import 'package:flutter/material.dart';
import 'package:lucious_beauty_app/core/constants/textstyles.dart';

class CustomBookAppointmentButton extends StatelessWidget {
  String img;
  String title;
  final ontap;
  Color imgcolor;
  Color titlecolor;
  Color containerclr;

  CustomBookAppointmentButton(
      {super.key,
      required this.ontap,
      required this.img,
      required this.imgcolor,
      required this.title,
      required this.titlecolor,
      required this.containerclr});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 48,
        width: 150,
        decoration: BoxDecoration(
            color: containerclr, borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(img, width: 26, height: 26, color: imgcolor),
            Text(
              title,
              style: style16.copyWith(color: titlecolor),
            )
          ],
        ),
      ),
    );
  }
}
