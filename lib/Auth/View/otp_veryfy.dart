import 'dart:ui';
import 'package:bankforcustomer/AppConstent/color.dart';
import 'package:bankforcustomer/AppConstent/textstyle.dart';
import 'package:bankforcustomer/DashBoard/Home/View/dashboard.dart';
import 'package:bankforcustomer/SplashScreen/Widget/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../controller/controller.dart';
class OtypVerifyPage extends StatefulWidget {
  OtypVerifyPage({Key? key,}) : super(key: key);

  @override
  State<OtypVerifyPage> createState() => _OtypVerifyPageState();
}

class _OtypVerifyPageState extends State<OtypVerifyPage> {
  DateTime ?currentBackPressTime;
  LoginController _controller=Get.put(LoginController());
  String etotp="";

  @override
  Widget build(BuildContext context)
  {
    const focusedBorderColor = Color.fromRGBO(0, 0, 0, 1.0);
    const fillColor = Color.fromRGBO(243, 246, 249, 0);
    const borderColor = Color.fromRGBO(0, 25, 126, 1.0);
    final defaultPinTheme = PinTheme(
      width: 50.r,
      height: 50.r,
      textStyle:  TextStyle(
        fontSize: 22.r,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19.r),
        border: Border.all(color: Colors.black),
      ),
    );
    _controller.startTimer();
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Scrollbar(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              child: Column(
                children: [
                  SizedBox(height: 30.r,),
                  Container(
                    height: 100.r,
                    child: Image.asset("assets/images/otp.png"),
                  ),
                  SizedBox(height: 40.r,),
                  Text("Verification",style: titleStyle.copyWith(fontSize: 18.r),textAlign: TextAlign.center,),
                  SizedBox(height: 10.r,),
                  Text("Enter the verification code we just sent\nyou on your 96******30",style: smallTextStyle.copyWith(fontSize: 14.r),textAlign: TextAlign.center,),
                  SizedBox(height: 20.r,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 220.r,
                        height: 55.r,
                        child:Pinput(
                          length: 4,
                          obscureText: true,
                          keyboardType: TextInputType.phone,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly],
                          onCompleted: (pin)
                          {

                          },
                          cursor: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                margin:  EdgeInsets.only(bottom: 9.r),
                                width: 22.r,
                                height: 1.r,
                                color: focusedBorderColor,
                              ),
                            ],
                          ),
                          focusedPinTheme: defaultPinTheme.copyWith(
                            decoration: defaultPinTheme.decoration!.copyWith(
                              borderRadius: BorderRadius.circular(6.r),
                              border: Border.all(color: borderColor),
                            ),
                          ),
                          submittedPinTheme: defaultPinTheme.copyWith(
                            decoration: defaultPinTheme.decoration!.copyWith(
                              color: fillColor,
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(color: borderColor),
                            ),
                          ),
                          errorPinTheme: defaultPinTheme.copyBorderWith(
                            border: Border.all(color: Colors.redAccent),
                          ),
                          defaultPinTheme: defaultPinTheme.copyWith(
                            decoration: defaultPinTheme.decoration!.copyWith(
                              borderRadius: BorderRadius.circular(6.r),
                              border: Border.all(color: focusedBorderColor),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                      margin: EdgeInsets.only(top:50.r,right: 15.r,bottom: 50.r),
                      width:Get.width,
                      child: Obx(() =>  Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(_controller.start.value.toString(),style: titleStyle.copyWith(fontSize: 16.r,
                              color: _controller.start.value!=0? Colors.blue:Colors.grey.withOpacity(0.4)),
                            textAlign: TextAlign.end,),
                          TextButton(child:Text("Resend Code?",
                            style: bodyText3Style.copyWith(fontSize: 16.r,
                                decoration: TextDecoration.underline,
                                color: _controller.start.value==0?TColor.Text:Colors.grey.withOpacity(0.4)),textAlign: TextAlign.end,),
                            onPressed:_controller.start.value==0? ()
                            {
                              _controller.start.value=120;
                              _controller.startTimer();
                            }:null,
                          ),
                        ],
                      ),
                      )),

                  MyButton(
                    onPress: (){
                      Get.to(()=>Dashboard());
                    }, text: 'Verify',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null || now.difference(currentBackPressTime!) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Press again to exit"),
            backgroundColor:Theme.of(context).appBarTheme.backgroundColor,
            elevation: 10, //shadow
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.only(bottom: 70.h,left: 30.w,right: 30.w),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.r),
            ),
          )
      );
      return Future.value(false);
    }
    return Future.value(true);
  }
}
