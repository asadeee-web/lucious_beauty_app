import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucious_beauty_app/core/constants/colors.dart';
import 'package:lucious_beauty_app/core/constants/decorations.dart';
import 'package:lucious_beauty_app/core/constants/sizes.dart';
import 'package:lucious_beauty_app/core/constants/textstyles.dart';
import 'package:lucious_beauty_app/ui/screens/services/all_services_screen.dart';
import 'package:lucious_beauty_app/ui/widgets/custom_button.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Booking",
          style: lowanStyle22,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "Upcoming Bookings",
                style: style16,
              ),
              sizedBox10,
              Container(
                padding: EdgeInsets.all(8),
                decoration: shadow_boxDecoration,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/manicure_image.png",
                          width: 59.w,
                          height: 59.h,
                          fit: BoxFit.cover,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Classic Manicure",
                              style: style14,
                            ),
                            Text(
                              "Classic Manicure",
                              style: style12.copyWith(color: primaryColor),
                            ),
                            Text(
                              "Classic Manicure",
                              style: style12.copyWith(color: greyColor),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.more_vert,
                              color: greyColor,
                            ),
                            Text(
                              "30 min 50 AED",
                              style: style12.copyWith(color: primaryColor),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
