import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:lucious_beauty_app/ui/screens/home/home_screen.dart';
import 'package:lucious_beauty_app/ui/screens/home/home_view_model.dart';
import 'package:lucious_beauty_app/ui/screens/splash/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => HomeViewModel())
        ],
        child: ScreenUtilInit(
          designSize: Size(MediaQuery.sizeOf(context).width,
              MediaQuery.sizeOf(context).height),
          child: GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Lucious Beauty',
              theme: ThemeData(
                scaffoldBackgroundColor: const Color(0xFFFAF8F6),
                appBarTheme: const AppBarTheme(
                    centerTitle: false, color: Color(0xFFFAF8F6), elevation: 0),
                fontFamily: "Urbanist",
                useMaterial3: true,
              ),
              home: const SplashScreen()),
        ));
  }
}
