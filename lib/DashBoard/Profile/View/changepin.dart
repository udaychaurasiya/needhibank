import 'package:bankforcustomer/AppConstent/color.dart';
import 'package:bankforcustomer/AppConstent/textstyle.dart';
import 'package:bankforcustomer/DashBoard/Home/Widget/CoustomField.dart';
import 'package:bankforcustomer/Widget/CoustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
class changepin extends StatefulWidget {
  const changepin({Key? key}) : super(key: key);

  @override
  State<changepin> createState() => _changepinState();
}

class _changepinState extends State<changepin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:TColor.Text,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Change Pin",style: bodyText3Style.copyWith(color: Colors.white),),
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
                hint: "Current Pin",
                heading: "Current Pin",
              ),
              SizedBox(height: 8.r,),
              EditTextWidget(
                hint: "New Pin",
                heading: "New Pin",
              ),
              SizedBox(height: 8.r,),
              EditTextWidget(
                hint: "Re-type Pin",
                heading: "Re-type Pin ",
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
