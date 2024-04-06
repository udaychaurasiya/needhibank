import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyButton extends StatelessWidget {
  final VoidCallback onPress;
  final String text ;
  const MyButton({super.key, required this.onPress,required this.text});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.r),
      padding: EdgeInsets.symmetric(horizontal: 20.r, vertical: 3.r),
      width: size.width * 0.8,
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          padding:  EdgeInsets.all(16.r),
          margin:  EdgeInsets.symmetric(horizontal: 15.r,vertical: 10.r),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(8),
          ),
          child:  Center(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16.r,
              ),
            ),
          ),
        ),
      ),
    );
  }
}