import 'package:bankforcustomer/AppConstent/color.dart';
import 'package:bankforcustomer/AppConstent/textstyle.dart';
import 'package:bankforcustomer/DashBoard/Home/Widget/CoustomField.dart';
import 'package:bankforcustomer/Widget/CoustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
class changepassword extends StatefulWidget {
  const changepassword({Key? key}) : super(key: key);

  @override
  State<changepassword> createState() => _changepasswordState();
}

class _changepasswordState extends State<changepassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:TColor.Text,

        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Change Password",style: bodyText3Style.copyWith(color: Colors.white),),
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(12.r),
          child: Column(
            children: [
              Container(
                height: 150.r,
                width: 300.r,
                child: Image.asset("assets/images/splash.png"),
              ),
              SizedBox(height: 10.r,),
              EditTextWidget(
                hint: "Current Password",
                heading: "Current Password",
              ),
              SizedBox(height: 8.r,),
              EditTextWidget(
                hint: "New Password",
                heading: "New Password",
              ),
              SizedBox(height: 8.r,),
              EditTextWidget(
                hint: "Re-type Password",
                heading: "Re-type Password ",
              ),
              SizedBox(height: 8.r,),
              Row(
                children: [
                  CustomButton(onPress: () {
                    Get.back();
                  }, text: 'CANCEL',color: Colors.red,),
                  Spacer(),
                  CustomButton(onPress: () {  }, text: 'SUBMIT',color: TColor.Text,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
