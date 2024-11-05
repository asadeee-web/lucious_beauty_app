import 'package:flutter/material.dart';
import 'package:lucious_beauty_app/core/constants/colors.dart';
import 'package:lucious_beauty_app/core/constants/sizes.dart';
import 'package:lucious_beauty_app/core/constants/strings.dart';
import 'package:lucious_beauty_app/core/constants/textstyles.dart';
import 'package:lucious_beauty_app/ui/widgets/custom_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            sizedBox20,
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Profile",
                style: lowanStyle22,
              ),
            ),
            sizedBox20,
            Container(
              width: 154,
              height: 154,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: primaryColor, width: 2)),
              child: CircleAvatar(
                backgroundImage: AssetImage(profile),
              ),
            ),
            sizedBox20,
            const Text(
              "Rayna Carder",
              style: lowanStyle22,
            ),
            sizedBox5,
            Text(
              "RaynaCarder@Email.com",
              style: style18.copyWith(color: greyColor),
            ),
            sizedBox20,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120),
              child: CustomButton(text: "Edit Profile", onTap: () {}),
            ),
            sizedBox40,
            const Divider(
              color: greyColor,
              thickness: 0.5,
            ),
            sizedBox40,
            _info("About Us"),
            _info("Career"),
            _info("Pricing and Plannings"),
            sizedBox40,
            TextButton(
                onPressed: () {},
                child: Text(
                  "Logout",
                  style: style18.copyWith(color: primaryColor),
                ))
          ],
        ),
      ),
    );
  }

  Padding _info(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: style18,
              ),
              Image.asset(
                "$iconsAssets/arrow.png",
                width: 25,
                height: 15,
              ),
            ],
          ),
          const Divider(
            color: greyColor,
            thickness: 0.3,
          ),
          sizedBox10
        ],
      ),
    );
  }
}
