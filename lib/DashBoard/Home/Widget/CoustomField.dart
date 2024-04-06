import 'package:bankforcustomer/AppConstent/color.dart';
import 'package:bankforcustomer/AppConstent/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
class EditTextWidget extends StatelessWidget {
  final TextEditingController ?controller;
  final String? heading;
  final String? hint;
  final TextInputType ?type;
  final FormFieldValidator? validator;
  final int ?length;
  final bool ?isRead;
  const EditTextWidget({Key? key,  this.controller, this.validator, this.hint,this.heading,
    this.type=TextInputType.text, this.length=null, this.isRead=false,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(" " +heading.toString(),style:bodyText3Style.copyWith(fontSize: 12.r,color: TColor.Text),),
        SizedBox(height: 5.r,),
        TextFormField(
            controller:controller,

            readOnly: isRead!,
            decoration:  InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width:.5,color: TColor.Text),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width:.5,color: TColor.Text),
              ),
              errorBorder:OutlineInputBorder(
                borderSide: BorderSide(width:.5,color: TColor.red),
              ),
              border:OutlineInputBorder(
                borderSide: BorderSide(width:.5,color: TColor.Text),
              ),
              focusedErrorBorder:OutlineInputBorder(
                borderSide: BorderSide(width:.5,color: TColor.Text),
              ),
              hintText: hint,
              hintStyle: TextStyle(color: Colors.grey.shade300),
              isDense: true,
              filled: true,
              fillColor: Colors.white,
              counter: Offstage(),
              contentPadding:EdgeInsets.symmetric(horizontal: 20.r, vertical: 20.r),
            ),
            keyboardType: type,
            validator:validator ,
            maxLength: length,
            style: smallTextStyle.copyWith(color: Colors.black)),
      ],
    );
  }
}
