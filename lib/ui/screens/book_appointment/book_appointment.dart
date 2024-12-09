import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucious_beauty_app/core/constants/colors.dart';
import 'package:lucious_beauty_app/core/constants/sizes.dart';
import 'package:lucious_beauty_app/core/constants/strings.dart';
import 'package:lucious_beauty_app/core/constants/textstyles.dart';
import 'package:lucious_beauty_app/ui/screens/book_appointment/book_appointment_view_model.dart';
import 'package:lucious_beauty_app/ui/widgets/custom_book_appointment_button.dart';
import 'package:lucious_beauty_app/ui/widgets/custom_button.dart';
import 'package:lucious_beauty_app/ui/widgets/custom_circle_box.dart';
import 'package:lucious_beauty_app/ui/widgets/custom_textfeild.dart';
import 'package:provider/provider.dart';

class BookAppointment extends StatelessWidget {
  const BookAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BookAppointmentViewModel(),
      child:
          Consumer<BookAppointmentViewModel>(builder: (context, model, child) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Header>>>
                _header(context),

                sizedBox40,

                //Available Time Slot>>>

                //Fill Out Your Details>>>
                _filloutYourDetail(model),
              ],
            ),
          ),
        );
      }),
    );
  }
}

_header(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height / 3.5,
    alignment: Alignment.center,
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/icons/header.png"), fit: BoxFit.cover)),
    child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              CustomCircleBox(
                  onTap: () {
                    Get.back();
                  },
                  image: Image.asset(
                    backarrowIcon,
                    color: primaryColor,
                    width: 16,
                    height: 9,
                  )),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Book Appointment",
                style: lowanStyle22.copyWith(color: whiteColor),
              ),
            ],
          ),
          sizedBox20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "assets/icons/ios_back.png",
                width: 7,
                height: 12,
              ),
              Text(
                "January",
                style: style20.copyWith(
                    fontWeight: FontWeight.w700, color: Colors.white),
              ),
              Image.asset(
                "assets/icons/ios_forward.png",
                width: 7,
                height: 12,
              ),
            ],
          ),
          sizedBox20,
          SizedBox(
            height: 50,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text(
                      "Mon",
                      style: style14.copyWith(color: whiteColor),
                    ),
                    sizedBox5,
                    Text(
                      "10",
                      style: style14.copyWith(color: whiteColor),
                    ),
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 20,
                );
              },
            ),
          )
        ],
      ),
    ),
  );
}

_availableTimeSlot() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      children: [
        Text(
          "Available Time Slots",
          style: style16,
        ),
      ],
    ),
  );
}

_filloutYourDetail(BookAppointmentViewModel model) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Fill Out Your Details",
          style: style16,
        ),
        sizedBox20,
        Row(
          children: [
            Expanded(child: CustomTextfeild(hintText: "Name")),
            SizedBox(
              width: 10,
            ),
            Expanded(child: CustomTextfeild(hintText: "Email")),
          ],
        ),
        sizedBox20,
        CustomTextfeild(hintText: "Phone Number"),
        sizedBox20,
        CustomTextfeild(hintText: "Your Message"),
        sizedBox20,
        CustomTextfeild(hintText: "Additional Requirement"),
        sizedBox40,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomBookAppointmentButton(
                ontap: () {
                  model.homeToggle();
                },
                img: "assets/icons/home2_icon.png",
                imgcolor: model.isSelect ? whiteColor : greyColor,
                title: "Home",
                titlecolor: model.isSelect ? whiteColor : greyColor,
                containerclr: model.isSelect ? primaryColor : whiteColor),
            CustomBookAppointmentButton(
                ontap: () {
                  model.salonToggle();
                },
                img: "assets/icons/salon_icon.png",
                imgcolor: model.unSeclect ? whiteColor : greyColor,
                title: "Salon",
                titlecolor: model.unSeclect ? whiteColor : greyColor,
                containerclr: model.unSeclect ? primaryColor : whiteColor)
          ],
        ),
        sizedBox20,
        Text(
            "We only serve houses in 45km wide of area. Please check if your house meets this requirement before booking. Thank you for your understanding."),
        sizedBox20,
        CustomButton(text: "Proceed", onTap: () {})
      ],
    ),
  );
}
