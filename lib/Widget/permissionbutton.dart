import 'package:bankforcustomer/AppConstent/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../AppConstent/color.dart';

class permissionbutton extends StatelessWidget {
  final double? width;
  final double? height;
  final String title;
  final GestureTapCallback? onTap;
  final bool? background;
  final Color? bgColor;
  final Color? iconColor;
  final double? radius;
  final IconData? icon;
  final double? iconSize;
  final bool? miniFont;
  final bool? border;
  const permissionbutton({super.key, this.width, this.height, required this.title, this.onTap,
    this.background=true, this.radius, this.icon, this.iconSize, this.miniFont=false, this.bgColor, this.border=true, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20.0.r),
      child: Container(
        width: width??Get.width,
        height: height ?? 40.r,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: background==true?TColor.white:bgColor??TColor.white,
            borderRadius: BorderRadius.circular(radius??5.r),
            border: border==false?null:Border.all(width: 0.5.r, color: bgColor??TColor.Text.withOpacity(0.9))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon!=null?Icon(icon,size: iconSize??18.r,color: background==true?Colors.white.withOpacity(0.9):iconColor??TColor.Text.withOpacity(0.9),):const SizedBox(),
            SizedBox(width: icon!=null?5.w:0),
            Text(title,style: bodyText3Style.copyWith(color: background==true?Colors.white.withOpacity(0.95):bgColor!=null?Colors.white.withOpacity(0.95):TColor.Text,
                fontSize: miniFont == true ? 12.r:16.r),),
          ],
        ),
      ),
    );
  }
}