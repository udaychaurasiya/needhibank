import 'package:bankforcustomer/AppConstent/color.dart';
import 'package:bankforcustomer/AppConstent/textstyle.dart';
import 'package:bankforcustomer/Auth/View/login_screen.dart';
import 'package:bankforcustomer/SplashScreen/Widget/my_button.dart';
import 'package:bankforcustomer/Widget/CoustomButtonlogin.dart';
import 'package:bankforcustomer/Widget/coustom_text_password.dart';
import 'package:bankforcustomer/Widget/textfromfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
class reset_password extends StatefulWidget {
  const reset_password({Key? key}) : super(key: key);

  @override
  State<reset_password> createState() => _reset_passwordState();
}

class _reset_passwordState extends State<reset_password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 250.r,
              width: 250.r,
              child: Image.asset("assets/images/splash.png"),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(" Password",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                TextFieldContainer(
                  child: CustomUnderLineTextField(
                    prefixIconColor: Colors.black.withOpacity(0.6),
                    hintColor: Colors.black.withOpacity(0.6),
                    isPassword: true,
                    hint: "Enter Password",
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return "Please enter Password";
                      }
                      return null;
                    },
                  )
                ),
              ],
            ),
            SizedBox(height: 10.r,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(" Confirm Password",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                TextFieldContainer(
                    child: CustomUnderLineTextField(
                      prefixIconColor: Colors.black.withOpacity(0.6),
                      hintColor: Colors.black.withOpacity(0.6),
                      isPassword: true,
                      hint: "Enter New Password",
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return "Please enter new Password";
                        }
                        return null;
                      },
                    )
                ),
              ],
            ),
            SizedBox(height: 40.r,),
            MyButton(onPress: (){
            Get.off(()=>LoginPage());
            }, text: "Reset Password",),
            SizedBox(height: 20.r,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){
                  Get.offAll(LoginPage());
                }, child: Text("Cancel   ",style: bodyText3Style.copyWith(fontWeight: FontWeight.bold,color: TColor.Text,decoration: TextDecoration.underline),))
              ],
            ),
            SizedBox(height: 80.r,),
            SizedBox(height: 10.r,),
          ],
        ),
      ),
    );
  }
}
