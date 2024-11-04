import 'package:flutter/material.dart';
import 'package:lucious_beauty_app/core/constants/colors.dart';
import 'package:lucious_beauty_app/core/constants/sizes.dart';
import 'package:lucious_beauty_app/core/constants/textstyles.dart';
import 'package:lucious_beauty_app/ui/widgets/custom_button.dart';
import 'package:lucious_beauty_app/ui/widgets/custom_unfilled_button.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

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
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Classic Manicure",
                          style: style22.copyWith(
                              color: primaryColor, fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            Text("321"),
                            SizedBox(
                              width: 5,
                            ),
                            Image.asset(
                              "assets/icons/favourite_icon.png",
                              height: 14,
                              width: 14,
                            )
                          ],
                        )
                      ],
                    ),
                    sizedBox10,
                    Text(
                      "45 min 59 AED",
                      style: style16.copyWith(color: greyColor),
                    ),
                    sizedBox20,
                    Text(
                      "Simple and classic, this manicure includes nail cleaning (cuticles cut and filed), shaping, and nail polish of your choice. ",
                      style: style16,
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                              child:
                                  CustomButton(text: "Book Now", onTap: () {})),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              child: CustomUnfilledButton(
                                  text: "Add to Cart", onTap: () {}))
                        ],
                      ),
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
