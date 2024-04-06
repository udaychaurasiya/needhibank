
import 'package:bankforcustomer/mathode/App_exception.dart';
import 'package:bankforcustomer/mathode/dailoghelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../AppConstent/color.dart';
class BaseController {
  void handleError(error)
  {
    Get.context!.loaderOverlay.hide();
    if (error is BadRequestException) {
      var message = error.message;
      errorSnack(message.toString());
    } else if (error is FetchDataException) {
      var message = error.message;
      errorSnack(message.toString());
    } else if (error is ApiNotRespondingException) {
      errorSnack("Oops! It took longer to respond.");
    }
    else{
      errorSnack("Something went wrong");
    }
  }
  showLoading(String? message) {
    DialogHelper.showLoading(message);
  }
  hideLoading() {
    DialogHelper.hideLoading();
  }
  errorSnack(String message)
  {
    Get.snackbar("Error", message,
      backgroundGradient: LinearGradient(colors: [Colors.red,Colors.red]),
      icon: Icon(Icons.cancel, color: Colors.black),
      snackPosition: SnackPosition.TOP,
      borderRadius: 3,

        );
      }
        successSnack(String message){
        Get.snackbar("", message,
        backgroundGradient: LinearGradient(colors: [TColor.Text,TColor.Text]),
        icon: Icon(Icons.check, color: Colors.black,size: 18.r,),
        snackPosition: SnackPosition.TOP,
        borderRadius: 10.r,
        titleText: Text("Success"),
        messageText: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(message,style: TextStyle(fontSize: 14.sp,color: Colors.white),),
          ],
        )
    );
  }

  warningSnack(String message)
  {
    Get.snackbar("Warning",message,
      backgroundGradient: LinearGradient(colors: [Colors.amber,Colors.amber]),
      icon: Icon(Icons.warning_amber, color: Colors.black),
      snackPosition: SnackPosition.TOP,
      borderRadius: 10.r,
    );
  }
}