import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lucious_beauty_app/core/constants/colors.dart';
import 'package:lucious_beauty_app/core/constants/sizes.dart';
import 'package:lucious_beauty_app/core/constants/strings.dart';
import 'package:lucious_beauty_app/core/constants/textstyles.dart';
import 'package:lucious_beauty_app/ui/screens/auth/register_screen.dart';
import 'package:lucious_beauty_app/ui/screens/home/home_screen.dart';
import 'package:lucious_beauty_app/ui/screens/root/root_screen.dart';
import 'package:lucious_beauty_app/ui/widgets/custom_button.dart';
import 'package:lucious_beauty_app/ui/widgets/custom_textfeild.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60,
              ),
              Center(
                child: Image.asset(
                  auth,
                  width: 180,
                  height: 175,
                ),
              ),
              sizedBox40,
              const Text(
                "Login",
                style: lowanStyle22,
              ),
              sizedBox40,
              CustomTextfeild(hintText: "Email"),
              sizedBox20,
              CustomTextfeild(hintText: "Password"),
              sizedBox40,
              CustomButton(onTap: () => Get.to(RootScreen()), text: "Login"),
              sizedBox40,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "New User ?",
                    style: style20.copyWith(color: Colors.black54),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(const RegisterScreen());
                      },
                      child: Text(
                        "Register",
                        style: style20.copyWith(color: primaryColor),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
