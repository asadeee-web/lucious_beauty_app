import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucious_beauty_app/core/constants/colors.dart';
import 'package:lucious_beauty_app/core/constants/decorations.dart';
import 'package:lucious_beauty_app/core/constants/sizes.dart';
import 'package:lucious_beauty_app/core/constants/strings.dart';
import 'package:lucious_beauty_app/core/constants/textstyles.dart';
import 'package:lucious_beauty_app/ui/screens/summary/summary_screen.dart';
import 'package:lucious_beauty_app/ui/widgets/custom_button.dart';
import 'package:lucious_beauty_app/ui/widgets/custom_circle_box.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

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
                "Cart",
                style: lowanStyle22,
              ),
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 2,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                    height: 90,
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
                                sizedBox5,
                                RichText(
                                  text: TextSpan(
                                      text: "90 Min  ",
                                      children: [TextSpan(text: "150 AD")],
                                      style: style12.copyWith(
                                          color: Colors.black)),
                                )
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
                }),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: CustomButton(
                  text: "Checkout",
                  onTap: () {
                    Get.to(SummaryScreen());
                  }),
            )
          ],
        ),
      ),
    );
  }
}
