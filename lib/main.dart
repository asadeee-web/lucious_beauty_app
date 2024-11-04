import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:lucious_beauty_app/core/constants/colors.dart';
import 'package:lucious_beauty_app/ui/screens/booking/booking_details.dart';
import 'package:lucious_beauty_app/ui/screens/booking/booking_screen.dart';
import 'package:lucious_beauty_app/ui/screens/services/all_services_screen.dart';
import 'package:lucious_beauty_app/ui/screens/services/details_screen.dart';
import 'package:lucious_beauty_app/ui/screens/services/specific_services_screen.dart';
import 'package:lucious_beauty_app/ui/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(
          MediaQuery.sizeOf(context).width, MediaQuery.sizeOf(context).height),
      child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Lucious Beauty',
          theme: ThemeData(
            scaffoldBackgroundColor: const Color(0xFFFAF8F6),
            appBarTheme: AppBarTheme(
                centerTitle: false, color: Color(0xFFFAF8F6), elevation: 0),
            fontFamily: "Urbanist",
            useMaterial3: true,
          ),
          home: const BookingScreen()),
    );
  }
}
