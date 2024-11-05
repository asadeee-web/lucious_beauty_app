import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucious_beauty_app/core/constants/colors.dart';
import 'package:lucious_beauty_app/core/constants/decorations.dart';
import 'package:lucious_beauty_app/core/constants/strings.dart';
import 'package:lucious_beauty_app/core/constants/textstyles.dart';
import 'package:lucious_beauty_app/ui/screens/root/root_screen.dart';
import 'package:lucious_beauty_app/ui/screens/all_services/all_services_view_model.dart';
import 'package:lucious_beauty_app/ui/screens/specific_services/specific_services_screen.dart';
import 'package:lucious_beauty_app/ui/widgets/custom_circle_box.dart';
import 'package:provider/provider.dart';

class AllServicesScreen extends StatelessWidget {
  const AllServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AllServicesViewModel(),
        child: Consumer<AllServicesViewModel>(
            builder: (context, model, child) => Scaffold(
                  appBar: AppBar(
                    automaticallyImplyLeading: false,
                    title: Row(
                      children: [
                        CustomCircleBox(
                            onTap: () {
                              Get.to(const RootScreen());
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
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: model.listServicesModel.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisExtent: 250,
                                  mainAxisSpacing: 15,
                                  crossAxisSpacing: 15),
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Get.to(SpecificServicesScreen(
                                  catogoryName:
                                      model.listServicesModel[index].title!,
                                ));
                              },
                              child: Container(
                                //margin: const EdgeInsets.only(left: 10),
                                // width: 89.w,
                                // height: 97.h,
                                decoration: boxDecoration,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      "${model.listServicesModel[index].image}",
                                      fit: BoxFit.cover,
                                    ),
                                    //sizedBox5,
                                    Text(
                                      "${model.listServicesModel[index].title}",
                                      textAlign: TextAlign.center,
                                      style:
                                          style18.copyWith(color: primaryColor),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                )));
  }
}
