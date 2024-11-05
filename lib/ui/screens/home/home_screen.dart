import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:lucious_beauty_app/core/constants/colors.dart';
import 'package:lucious_beauty_app/core/constants/decorations.dart';
import 'package:lucious_beauty_app/core/constants/sizes.dart';
import 'package:lucious_beauty_app/core/constants/strings.dart';
import 'package:lucious_beauty_app/core/constants/textstyles.dart';
import 'package:lucious_beauty_app/ui/screens/cart/cart_screen.dart';

import 'package:lucious_beauty_app/ui/screens/home/home_view_model.dart';
import 'package:lucious_beauty_app/ui/screens/services/all_services_screen.dart';
import 'package:lucious_beauty_app/ui/widgets/custom_circle_box.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomeViewModel(),
        child: Consumer<HomeViewModel>(
            builder: (context, model, child) => Scaffold(
                  body: SingleChildScrollView(
                      child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Header>>>
                        _header(context),

                        //Exclusive Offers>>>
                        _exclusiveOffer(context),

                        // //Our Services>>>
                        _ourServices(context, model),

                        // //Featured Services>>>
                        _featureServices(context, model),

                        // //Up Comming Bookings>>>>
                        _upCommingBookings(context, model)

                        //
                      ],
                    ),
                  )),
                )));
  }
}

_header(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      sizedBox20,
      Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          sizedBox20,
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Good Morning",
                textAlign: TextAlign.start,
                style: style14,
              ),
              Text(
                "Rayna Carder",
                style: lowanStyle22,
              )
            ],
          ),
          const Spacer(),
          CustomCircleBox(
              onTap: () {
                Get.to(CartScreen());
              },
              image: Image.asset(cartIcon)),
        ],
      ),
    ],
  );
}

_exclusiveOffer(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      sizedBox20,
      Text(
        "Exclusive Offers",
        style: style16.copyWith(fontWeight: FontWeight.w600),
      ),
      sizedBox10,

      //Card>>>>
      Container(
        // height: 140,
        padding: const EdgeInsets.only(left: 20, top: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: cardColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Upto 50%",
                  style:
                      lowanStyle20.copyWith(fontSize: 15, color: primaryColor),
                ),
                sizedBox10,
                Text(
                  "Look more beautiful and\nSave more discount.",
                  style: lowanStyle20.copyWith(fontSize: 15, color: whiteColor),
                ),
                sizedBox10,
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
      ),
    ],
  );
}

_ourServices(BuildContext context, HomeViewModel model) {
  return Column(
    children: [
      sizedBox20,
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Our Services",
            style: style16.copyWith(fontWeight: FontWeight.w600),
          ),
          GestureDetector(
            onTap: () {
              Get.to(const AllServicesScreen());
            },
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
        height: 120,
        child: ListView.builder(
            itemCount: model.listServicesModel.length,
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
                      "${model.listServicesModel[index].image}",
                      fit: BoxFit.cover,
                    ),
                    sizedBox5,
                    Text(
                      "${model.listServicesModel[index].title}",
                      textAlign: TextAlign.center,
                      style: style16.copyWith(color: primaryColor),
                    )
                  ],
                ),
              );
            }),
      )
    ],
  );
}

_featureServices(BuildContext context, HomeViewModel model) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      sizedBox20,
      Text(
        "Featured Services",
        style: style16.copyWith(fontWeight: FontWeight.w600),
      ),
      sizedBox10,
      SizedBox(
        height: 71,
        child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                //width: 267,
                margin: const EdgeInsets.only(right: 10),
                padding: const EdgeInsets.all(5),
                decoration: boxDecoration,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset(
                      pedicure,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
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

                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, left: 15),
                      child: Image.asset(
                        forwardarrowIcon,
                        color: primaryColor,
                      ),
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
    ],
  );
}

_upCommingBookings(BuildContext context, HomeViewModel model) {
  return Column(
    children: [
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
        height: 71,
        child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                //width: 267,
                margin: const EdgeInsets.only(right: 10),
                padding: const EdgeInsets.all(5),
                decoration: boxDecoration,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset(
                      manicure,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Classic Manicure",
                          style: style16,
                        ),
                        Text(
                          "Home",
                          style: style12.copyWith(color: primaryColor),
                        ),
                        Text(
                          "Sat, 22 August 2022",
                          style: style12.copyWith(color: greyColor),
                        )
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
    ],
  );
}
