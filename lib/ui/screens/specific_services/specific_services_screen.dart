import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucious_beauty_app/core/constants/colors.dart';
import 'package:lucious_beauty_app/core/constants/decorations.dart';
import 'package:lucious_beauty_app/core/constants/strings.dart';
import 'package:lucious_beauty_app/core/constants/textstyles.dart';

import 'package:lucious_beauty_app/ui/screens/services/all_services_screen.dart';
import 'package:lucious_beauty_app/ui/screens/services_details/services_details_screen.dart';
import 'package:lucious_beauty_app/ui/screens/specific_services/specific_services_view_model.dart';
import 'package:lucious_beauty_app/ui/widgets/custom_circle_box.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class SpecificServicesScreen extends StatelessWidget {
  //final ServicesModel? servicesModel;
  String catogoryName;
  SpecificServicesScreen({super.key, required this.catogoryName});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SpecificServicesViewModel(),
      child: Consumer<SpecificServicesViewModel>(
          builder: (context, model, child) => Scaffold(
                appBar: AppBar(
                  automaticallyImplyLeading: false,
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
                            Get.to(const AllServicesScreen());
                          },
                          image: Image.asset(
                            backarrowIcon,
                            width: 16,
                            height: 9,
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "${catogoryName}",
                        style: lowanStyle22,
                      ),
                    ],
                  ),
                ),
                body: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GridView.builder(
                      //scrollDirection: Axis.vertical,
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: model.listSpecificServices.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisExtent: 250,
                              mainAxisSpacing: 15,
                              crossAxisSpacing: 15),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Get.to(ServicesDetailsScreen(
                                specificServicesModel:
                                    model.listSpecificServices[index]));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: boxDecoration,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image.asset(
                                    "${model.listSpecificServices[index].imgUrl}",
                                    fit: BoxFit.cover,
                                    // width: 125.w,
                                    // height: 115.h,
                                  ),
                                ),
                                //sizedBox5,
                                Text(
                                  "${model.listSpecificServices[index].title}",
                                  style: style18.copyWith(color: primaryColor),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text:
                                            "${model.listSpecificServices[index].time}",
                                        children: [
                                          TextSpan(
                                              text:
                                                  "${model.listSpecificServices[index].price}")
                                        ],
                                        style: style14.copyWith(
                                            color: greyColor, fontSize: 13),
                                      ),
                                    ),
                                    Image.asset(
                                      forwardarrowIcon,
                                      color: primaryColor,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              )),
    );
  }
}
