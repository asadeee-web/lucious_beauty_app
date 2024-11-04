import 'package:flutter/material.dart';
import 'package:lucious_beauty_app/core/constants/colors.dart';
import 'package:lucious_beauty_app/core/constants/sizes.dart';
import 'package:lucious_beauty_app/core/constants/textstyles.dart';

import 'package:lucious_beauty_app/ui/widgets/custom_unfilled_button.dart';

class BookingDetailsScreen extends StatelessWidget {
  const BookingDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Image.asset("assets/images/classic_manicure_image.png"),
            Positioned(
              bottom: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                height: MediaQuery.of(context).size.height / 2.5,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Classic Manicure",
                      style: style22.copyWith(
                          color: primaryColor, fontWeight: FontWeight.w600),
                    ),
                    sizedBox10,
                    Text(
                      "45 min 59 AED",
                      style: style16.copyWith(color: greyColor),
                    ),
                    sizedBox20,
                    Text(
                      "Sat, 22 August 2022",
                      style: style20,
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 30, left: 10, right: 10),
                      child: CustomUnfilledButton(
                          text: "Cancel Booking", onTap: () {}),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
