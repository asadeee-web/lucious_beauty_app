import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucious_beauty_app/core/constants/colors.dart';
import 'package:lucious_beauty_app/core/constants/strings.dart';
import 'package:lucious_beauty_app/ui/screens/auth/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    init();
    super.initState();
  }

  init() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.offAll(const LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            logo,
            width: 101,
            height: 138,
          ),
          const SizedBox(
            height: 5,
          ),
          const Center(
            child: Text(
              "Luciuos",
              style: TextStyle(
                  fontFamily: "lowan",
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Center(
            child: Text(
              "Beauty Salon",
              style: TextStyle(
                  fontWeight: FontWeight.w300, letterSpacing: 12, fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}
