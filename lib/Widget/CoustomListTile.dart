import 'package:bankforcustomer/AppConstent/color.dart';
import 'package:bankforcustomer/AppConstent/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
class CustomListTile extends StatelessWidget {
  final String? title;
  final Widget? leadingWidget;
  final VoidCallback? onTab;
  final PreferredSizeWidget? bottom;
  const CustomListTile({super.key, this.title,this.leadingWidget,
    this.bottom, this.onTab,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
        height: 60.r,
        width: Get.width,
        child: Column(
          children: [
            SizedBox(height: 10.r,),
            Row(
              children: [
                SizedBox(width: 8.r,),
                Container(
                 height:30.r,
                 width: 30.r,
                 child: leadingWidget,),
                SizedBox(width: 8.r,),
                Text(title.toString(),style: bodyText3Style,),
                Spacer(),
                Icon(Icons.keyboard_arrow_right_rounded,color: TColor.Text,),

              ],
            ),
            Divider(color: Colors.orange,indent: 45.r),
          ],
        ),
      ),
    );
  }
}