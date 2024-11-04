import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucious_beauty_app/core/constants/colors.dart';
import 'package:lucious_beauty_app/core/constants/decorations.dart';
import 'package:lucious_beauty_app/core/constants/sizes.dart';
import 'package:lucious_beauty_app/core/constants/strings.dart';
import 'package:lucious_beauty_app/core/constants/textstyles.dart';
import 'package:lucious_beauty_app/main.dart';
import 'package:lucious_beauty_app/ui/widgets/custom_button.dart';
import 'package:lucious_beauty_app/ui/widgets/custom_circle_box.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sizedBox20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Good Morning",
                      style: style14,
                    ),
                    Text(
                      "Rayna Carder",
                      style: lowanStyle22,
                    )
                  ],
                ),
                CustomCircleBox(image: Image.asset(cartIcon)),
              ],
            ),
            sizedBox20,
            Text(
              "Exclusive Offers",
              style: style16.copyWith(fontWeight: FontWeight.w600),
            ),
            sizedBox10,

            //Card>>>>
            exlusiveOfferCard(),

            sizedBox20,

            //Our Services
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Our Services",
                  style: style16.copyWith(fontWeight: FontWeight.w600),
                ),
                GestureDetector(
                  child: Row(
                    children: [
                      Text(
                        "See All",
                        style: style12.copyWith(color: greyColor),
                      ),
                      Image.asset(
                        forwardarrowIcon,
                        width: 14,
                        height: 14,
                      )
                    ],
                  ),
                ),
              ],
            ),
            sizedBox10,

            SizedBox(
              height: 100,
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(left: 10),
                      width: 89.w,
                      height: 97.h,
                      decoration: boxDecoration,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/hair_image.png",
                            width: 37,
                            height: 37,
                          ),
                          sizedBox5,
                          Text(
                            "Nails",
                            style: style16.copyWith(color: primaryColor),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            sizedBox20,
            Text(
              "Featured Services",
              style: style16.copyWith(fontWeight: FontWeight.w600),
            ),
            sizedBox10,
            SizedBox(
              height: 100,
              child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 267,
                      margin: EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.all(5),
                      decoration: boxDecoration,
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/pedicure_image.png",
                            width: 78,
                            height: 69,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Classic Pedicure",
                                style: style16P,
                              ),
                              Text(
                                "45 min 59 AED",
                                style: style14,
                              ),
                            ],
                          ),
                          // Image.asset(
                          //   forwardarrowIcon,
                          //   width: 14,
                          //   height: 14,
                          // )
                        ],
                      ),
                    );
                  }),
            ),

            //Up Comming Bookings>>>>

            sizedBox20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "UpComming Bookings",
                  style: style16.copyWith(fontWeight: FontWeight.w600),
                ),
                GestureDetector(
                  child: Row(
                    children: [
                      Text(
                        "All Bookings",
                        style: style12.copyWith(color: greyColor),
                      ),
                      Image.asset(
                        forwardarrowIcon,
                        width: 14,
                        height: 14,
                      )
                    ],
                  ),
                ),
              ],
            ),
            sizedBox10,
            SizedBox(
              height: 100,
              child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 267,
                      margin: EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.all(5),
                      decoration: boxDecoration,
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/pedicure_image.png",
                            width: 78,
                            height: 69,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Classic Pedicure",
                                style: style16P,
                              ),
                              Text(
                                "45 min 59 AED",
                                style: style14,
                              ),
                            ],
                          ),
                          // Image.asset(
                          //   forwardarrowIcon,
                          //   width: 14,
                          //   height: 14,
                          // )
                        ],
                      ),
                    );
                  }),
            )

            //
          ],
        ),
      )),
    );
  }

  Container exlusiveOfferCard() {
    return Container(
      height: 140,
      padding: const EdgeInsets.only(left: 20, top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: cardColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Upto 50%",
                style: lowanStyle20.copyWith(fontSize: 15, color: primaryColor),
              ),
              Text(
                "Look more beautiful and\nSave more discount.",
                style: lowanStyle20.copyWith(fontSize: 15, color: whiteColor),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: primaryColor,
                ),
                child: Text(
                  "Get offer now",
                  style: style12.copyWith(color: whiteColor),
                ),
              )
            ],
          ),
          SizedBox(
            height: 140,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 109.19,
                  width: 109.19,
                  decoration: const BoxDecoration(
                      color: primaryColor, shape: BoxShape.circle),
                ),
                Positioned(
                  right: 8,
                  child: Image.asset(
                    person,
                    width: 135.w,
                    height: 108.h,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
