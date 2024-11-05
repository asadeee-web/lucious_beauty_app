import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucious_beauty_app/core/constants/colors.dart';
import 'package:lucious_beauty_app/core/constants/decorations.dart';
import 'package:lucious_beauty_app/core/constants/sizes.dart';
import 'package:lucious_beauty_app/core/constants/strings.dart';
import 'package:lucious_beauty_app/core/constants/textstyles.dart';
import 'package:lucious_beauty_app/ui/screens/services_details/booking_details.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Booking",
          style: lowanStyle22,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Upcoming Bookings>>>
              _upcomingBookings(context),

              //Previous Bookings>>>
              _previousBookings(context),
            ],
          ),
        ),
      ),
    );
  }
}

_upcomingBookings(BuildContext context_) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        "Upcoming Bookings",
        style: style16,
      ),
      sizedBox10,
      ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 2,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Get.to(BookingDetailsScreen());
              },
              child: Container(
                height: 71,
                margin: const EdgeInsets.only(right: 10, bottom: 10),
                padding: const EdgeInsets.all(5),
                decoration: boxDecoration,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          manicure,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Classic Pedicure",
                              style: style16,
                            ),
                            Text(
                              "Salon",
                              style: style12.copyWith(color: primaryColor),
                            ),
                            Text(
                              "45 min 59 AED",
                              style: style14.copyWith(color: greyColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(Icons.more_vert),
                        RichText(
                          text: TextSpan(
                              text: "30 Min  ",
                              children: [TextSpan(text: "50 AD")],
                              style: style12.copyWith(color: primaryColor)),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    ],
  );
}

_previousBookings(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      sizedBox20,
      const Text(
        "Previous Bookings",
        style: style16,
      ),
      sizedBox10,
      ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 3,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Container(
              height: 71,
              margin: const EdgeInsets.only(right: 10, bottom: 10),
              padding: const EdgeInsets.all(5),
              decoration: boxDecoration,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        manicure,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Classic Pedicure",
                            style: style16,
                          ),
                          Text(
                            "45 min 59 AED",
                            style: style14.copyWith(color: greyColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(Icons.more_vert),
                      RichText(
                        text: TextSpan(
                            text: "30 Min  ",
                            children: [TextSpan(text: "50 AD")],
                            style: style12.copyWith(color: primaryColor)),
                      )
                    ],
                  )
                ],
              ),
            );
          })
    ],
  );
}
