
import 'package:bankforcustomer/AppConstent/color.dart';
import 'package:bankforcustomer/AppConstent/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  final String? title;
  final String? leadingTitle;
  final bool leadingBool;
  final bool? backgroundValue;
  final bool? back;
  final List<Widget>? actions;
  final bool? centerTitle;
  final VoidCallback? onPressed;
  final VoidCallback? onTab;
  final PreferredSizeWidget? bottom;
  const CustomAppBar({super.key, this.title="", this.leadingTitle="",
    required this.leadingBool, this.actions, this.centerTitle,
    this.onPressed, this.backgroundValue=true,
    this.bottom, this.back, this.onTab,});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      toolbarHeight: 50.h,
      backgroundColor: backgroundValue==true?TColor.bg:TColor.Text,
      centerTitle: centerTitle,
      leadingWidth: leadingBool==true?75.r:back==true?40.r:0,
      leading: leadingBool==true ? Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(onTap: onPressed, child: Icon(Icons.menu, size: 28.r,
            color: backgroundValue==true?TColor.white.withOpacity(0.9):TColor.bg.withOpacity(0.9),),
          ),
          SizedBox(width: 5.r),
          Text(leadingTitle.toString(),style: bodyText3Style.copyWith(color: backgroundValue==true?TColor.white.withOpacity(0.9):TColor.bg.withOpacity(0.9)),)
        ],
      ): back==true?InkWell(
        onTap: onTab,
        child: Padding(
          padding: EdgeInsets.only(left: 8.0.r,right: 10.r),
          child: Icon(Icons.arrow_back_sharp, size: 25.r, color:  backgroundValue==true?TColor.white.withOpacity(0.9):TColor.white.withOpacity(0.9),),
        ),
      ):const SizedBox(),
      title: Text(title.toString(),style: bodyText3Style.copyWith(fontSize: 18.r, color: backgroundValue==true?TColor.white.withOpacity(0.9):TColor.white.withOpacity(0.9)),),
      actions: actions,
      bottom: bottom,
    );
  }
}
