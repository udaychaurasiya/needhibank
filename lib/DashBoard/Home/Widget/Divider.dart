import 'package:bankforcustomer/AppConstent/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CoustomDivider extends StatelessWidget {
  const CoustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left:38.r,right: 38.r),
      child: Divider(color: TColor.Text,),
    );
  }
}
