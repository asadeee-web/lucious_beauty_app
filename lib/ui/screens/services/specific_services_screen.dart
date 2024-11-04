import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lucious_beauty_app/core/constants/colors.dart';
import 'package:lucious_beauty_app/core/constants/decorations.dart';
import 'package:lucious_beauty_app/core/constants/sizes.dart';
import 'package:lucious_beauty_app/core/constants/strings.dart';
import 'package:lucious_beauty_app/core/constants/textstyles.dart';
import 'package:lucious_beauty_app/ui/screens/home/home_screen.dart';
import 'package:lucious_beauty_app/ui/widgets/custom_circle_box.dart';

class SpecificServicesScreen extends StatelessWidget {
  const SpecificServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Image.asset(
              searchIcon,
              width: 35,
              height: 35,
            ),
          )
        ],
        title: Row(
          children: [
            CustomCircleBox(
                onTap: () {
                  Get.to(HomeScreen());
                },
                image: Image.asset(
                  backarrowIcon,
                  width: 16,
                  height: 9,
                )),
            SizedBox(
              width: 10,
            ),
            Text(
              "All Services",
              style: lowanStyle22,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.builder(
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 20,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 15, crossAxisSpacing: 15),
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(8),
                  //margin: const EdgeInsets.only(left: 10),
                  // width: 89.w,
                  // height: 97.h,
                  decoration: boxDecoration,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          "assets/images/pedicure_image.png",
                          fit: BoxFit.contain,
                          width: 125.w,
                          height: 115.h,
                        ),
                      ),
                      //sizedBox5,
                      Text(
                        "Nails",
                        style: style18.copyWith(color: primaryColor),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "45 min 59 AED",
                            style: style14.copyWith(color: greyColor),
                          ),
                          Image.asset(forwardarrowIcon)
                        ],
                      )
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
