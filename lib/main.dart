import 'package:bankforcustomer/AppConstent/AppConstant.dart';
import 'package:bankforcustomer/DashBoard/Home/View/dashboard.dart';
import 'package:bankforcustomer/SplashScreen/View/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:loader_overlay/loader_overlay.dart';

import 'AppConstent/color.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return  GlobalLoaderOverlay(
          useDefaultLoading: false,
          overlayOpacity: 0.1,
          overlayColor: Colors.white.withOpacity(.1),
          overlayWidget: Center(
            child: Container(
                height: 41,
                width: 41,
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const CircularProgressIndicator(
                  color: Colors.black,
                  strokeWidth: 3.5,
                )
            ),
          ),
          child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title:"Nidhibank",
            theme: ThemeData(
              scrollbarTheme: ScrollbarThemeData(
                thumbColor: MaterialStateProperty.all(TColor.Text), // Set thumb color
                trackColor: MaterialStateProperty.all(Colors.grey), // Set track color
                trackBorderColor: MaterialStateProperty.all(Colors.black), // Set track border color
                radius: Radius.circular(5.r), // Set thumb radius
                thickness: MaterialStateProperty.all(3.r), // Set thumb thickness
              ),
            ),
            home:GetStorage().read(AppConstant.userName)!=null?
            GetStorage().read(AppConstant.userName).toString().isNotEmpty?
            Dashboard():SplashScreen():SplashScreen(),
            debugShowMaterialGrid: false,
          ),
        );
      },
    );
  }
}

