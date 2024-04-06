
import 'dart:async';
import 'dart:convert';

import 'package:bankforcustomer/AppConstent/AppConstant.dart';
import 'package:bankforcustomer/AppConstent/AppURL.dart';
import 'package:bankforcustomer/DashBoard/Home/View/dashboard.dart';
import 'package:bankforcustomer/mathode/BaseClient.dart';
import 'package:bankforcustomer/mathode/BaseController.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:loader_overlay/loader_overlay.dart';

class LoginController extends GetxController {

  GetStorage _storage=GetStorage();
  TextEditingController UserId=TextEditingController();
  TextEditingController etPasswaord=TextEditingController();
  Timer? _timer;
  RxInt start = 60.obs;
  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
          (Timer timer) {
        if (start.value == 0) {
          timer.cancel();
        } else {
          start.value--;
        }
      },
    );
  }


  signUpNetworkApi()async{
    var bodyRequest={
      "email":UserId.text.toString(),
      "password":etPasswaord.text.toString(),
    };
    Get.context!.loaderOverlay.show();
    var response=await BaseClient().post(SignIn, bodyRequest).catchError(BaseController().handleError);
    print(response+"lkhiug8f");
    Get.context!.loaderOverlay.hide();
    if(jsonDecode(response)["status"]=="1") {
      if(jsonDecode(response)["data"].isNotEmpty){
        _storage.write(AppConstant.id, jsonDecode(response)["data"]["email"]??"");
        _storage.write(AppConstant.userName, jsonDecode(response)["data"]["login_user_name"]??"");
        _storage.write(AppConstant.email, jsonDecode(response)["data"]["email"]??"");
        _storage.write(AppConstant.fname, jsonDecode(response)["data"]["fname"]??"");
        _storage.write(AppConstant.lname, jsonDecode(response)["data"]["lname"]??"");
        _storage.write(AppConstant.mobile, jsonDecode(response)["data"]["mobile"]??"");
        _storage.write(AppConstant.designation, jsonDecode(response)["data"]["designation"]??"");
        _storage.write(AppConstant.password, jsonDecode(response)["data"]["password"]??"");
        _storage.write(AppConstant.back_date_entry_days, jsonDecode(response)["data"]["back_date_entry_days"]??"");
        _storage.write(AppConstant.permissions, jsonDecode(response)["data"]["permissions"]??"");
        _storage.write(AppConstant.branch, jsonDecode(response)["data"]["branch"]??"");
        _storage.write(AppConstant.login_on_holidays, jsonDecode(response)["data"]["login_on_holidays"]??"");
        _storage.write(AppConstant.searchable_account, jsonDecode(response)["data"]["searchable_account"]??"");
        _storage.write(AppConstant.user_active, jsonDecode(response)["data"]["user_active"]??"");
        _storage.write(AppConstant.account_login_locked, jsonDecode(response)["data"]["account_login_locked"]??"");
        _storage.write(AppConstant.created_at, jsonDecode(response)["data"]["created_at"]??"");
        _storage.write(AppConstant.updated_at, jsonDecode(response)["data"]["updated_at"]??"");
      }
      BaseController().successSnack(jsonDecode(response)["message"]);
      Get.offAll(() => Dashboard());
      return;
    }
    BaseController().errorSnack(jsonDecode(response)["message"]);
  }
}