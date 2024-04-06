import 'package:bankforcustomer/AppConstent/color.dart';
import 'package:bankforcustomer/AppConstent/textstyle.dart';
import 'package:bankforcustomer/Auth/View/ForgetpasswordOtp.dart';
import 'package:bankforcustomer/Auth/View/reset_password.dart';
import 'package:bankforcustomer/SplashScreen/Widget/my_button.dart';
import 'package:bankforcustomer/Widget/CoustomButtonlogin.dart';
import 'package:bankforcustomer/Widget/textfromfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
class forgetpassword extends StatefulWidget {
  const forgetpassword({Key? key}) : super(key: key);

  @override
  State<forgetpassword> createState() => _forgetpasswordState();
}

class _forgetpasswordState extends State<forgetpassword> {
  TextEditingController phoneNumber=Get.put(TextEditingController());
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
                Text(
                  " Mobile Number",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                TextFieldContainer(
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.r),
                        child: Text(
                          "+91",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 20.r),
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: phoneNumber,
                          keyboardType: TextInputType.phone,
                          autofillHints: [
                            AutofillHints.telephoneNumberDevice
                          ],
                          onEditingComplete: () =>
                              TextInput.finishAutofillContext(),
                          decoration: InputDecoration(
                            hintText: "Phone Number",
                            hintStyle: TextStyle(fontSize: 14.r),
                            border: InputBorder.none,

                          ),
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 20.r),
                          validator: (value) {
                            if (value == null ||
                                value.trim().isEmpty ||
                                value.length!= 10) {
                              return 'Enter a valid 10-digit phone number';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.r,),
            MyButton(onPress: (){
            Get.to(()=>forgetpasswordOtp());
            }, text: "GET OTP"),
            SizedBox(height: 20.r,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){
                  Get.back();
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
