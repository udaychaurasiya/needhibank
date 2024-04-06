// ignore_for_file: file_names

import 'package:bankforcustomer/AppConstent/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPress;
  final String text;
  final Color? color;

  const CustomButton({Key? key, required this.onPress, required this.text,this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(onTap: onPress,
          child: Container(
            height: 40.r,
            width: Get.width/2.2.r,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              color: color
            ),
            child: Center(child: Text(text,style: bodyText3Style.copyWith(fontSize: 13.r,color: Colors.white),)),
          ),
        )
      ],
    );
  }
}
