// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class CustomAnimation extends GetxController{

  void showCustomSnackBar(String message,
      {bool isError = true, bool getXSnackBar = false}) {
    if (message != null && message.isNotEmpty) {
      if (getXSnackBar) {
        Get.showSnackbar(GetSnackBar(
          backgroundColor: isError ? Colors.red : Colors.green,
          message: message,
          maxWidth: 1170.r,
          duration: const Duration(seconds: 2),
          snackStyle: SnackStyle.FLOATING,
          snackPosition: SnackPosition.TOP, // Position at the top
          margin:  EdgeInsets.all(10.r),
          borderRadius: 5.r,
          isDismissible: true,
          dismissDirection: DismissDirection.horizontal,
        ));
      } else {
        Get.showSnackbar(GetSnackBar(
          backgroundColor: isError ? Colors.red : /*Color(0xff051ba6)*/ Colors.green,
          message: message,
          maxWidth:1170.r,
          duration: const Duration(seconds: 2),
          snackStyle: SnackStyle.FLOATING,
          snackPosition: SnackPosition.TOP, // Position at the top
          margin:  EdgeInsets.all(10.r),
          borderRadius:5.r,
          isDismissible: true,
          dismissDirection: DismissDirection.horizontal,
        ));
      }
    }
  }

  showCustomToast(String message, {bool isError = true}) {
    if (message != null && message.isNotEmpty) {
      Fluttertoast.showToast(
          msg: message,
          backgroundColor: isError ? Colors.red.shade400 : Colors.black,
          textColor: Colors.white);

    }
  }

}
