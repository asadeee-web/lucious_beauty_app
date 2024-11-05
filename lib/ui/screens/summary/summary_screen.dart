import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucious_beauty_app/core/constants/colors.dart';
import 'package:lucious_beauty_app/core/constants/sizes.dart';
import 'package:lucious_beauty_app/core/constants/strings.dart';
import 'package:lucious_beauty_app/core/constants/textstyles.dart';
import 'package:lucious_beauty_app/ui/screens/booking/booking_screen.dart';
import 'package:lucious_beauty_app/ui/widgets/custom_button.dart';
import 'package:lucious_beauty_app/ui/widgets/custom_circle_box.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              CustomCircleBox(
                  onTap: () {
                    Get.back();
                  },
                  image: Image.asset(
                    backarrowIcon,
                    width: 16,
                    height: 9,
                  )),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "Summary",
                style: lowanStyle22,
              ),
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sizedBox20,
            Text(
              "Payment Details",
              style: style18,
            ),
            sizedBox20,
            _detail(text1: "Classic Manicure", text2: "59 AED"),
            sizedBox10,
            _detail(text1: "Classic Pedicure", text2: "59 AED"),
            sizedBox10,
            _detail(text1: "Message", text2: "59 AED"),
            sizedBox20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sub Total",
                  style: style14.copyWith(fontWeight: FontWeight.w600),
                ),
                Text(
                  "177 AED",
                  style: style14.copyWith(fontWeight: FontWeight.w600),
                ),
              ],
            ),
            sizedBox10,
            _detail(text1: "Pay Later", text2: "59 AED"),
            sizedBox20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: style16.copyWith(fontWeight: FontWeight.w600),
                ),
                Text(
                  "118 AED",
                  style: style16.copyWith(fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: CustomButton(
                  text: "Confirm Booking",
                  onTap: () {
                    showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                congrats,
                                width: 90,
                                height: 90,
                              ),
                              sizedBox20,
                              Text(
                                "Congratulations !",
                                style: style20.copyWith(
                                    fontWeight: FontWeight.w600),
                              ),
                              sizedBox10,
                              Text(
                                "Your reservation has been \nsuccessfully booked.",
                                textAlign: TextAlign.center,
                                style: style16.copyWith(color: greyColor),
                              ),
                              sizedBox40,
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: CustomButton(
                                    text: "See Bookings",
                                    onTap: () {
                                      Get.to(BookingScreen());
                                    }),
                              )
                            ],
                          ));
                        });
                  }),
            )
          ],
        ),
      ),
    );
  }

  Row _detail({String? text1, String? text2}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1!,
          style: style14,
        ),
        Text(
          text2!,
          style: style14,
        ),
      ],
    );
  }
}
