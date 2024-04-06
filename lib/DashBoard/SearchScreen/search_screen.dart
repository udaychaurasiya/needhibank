import 'package:bankforcustomer/AppConstent/color.dart';
import 'package:bankforcustomer/AppConstent/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Support extends StatefulWidget {
  const Support({Key? key}) : super(key: key);

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.white,
      body:SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(8.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome to Help & Support",style: bodyText3Style.copyWith(fontSize: 25.r),),
              SizedBox(height: 8.r,),
              Text("Hi Satya, what can we help you with?",style: smallTextStyle.copyWith(fontSize: 13.r),),
              SizedBox(height: 30.r,),
           Container(
                padding: EdgeInsets.all(8.r),
              height: 200.r,
               decoration: BoxDecoration(
                 border: Border.all(color: Colors.grey.shade300),
               borderRadius: BorderRadius.circular(10.r),
               gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white, Colors.lightBlueAccent.withOpacity(.3)],
              ),
            ), 
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello ,",style: bodyText3Style.copyWith(fontSize: 18.r),),
              SizedBox(height: 10.r,),
              Text("Thank you for reaching out. How can we assist you with your payment?",style: bodyText3Style.copyWith(fontSize: 13.r)),
              SizedBox(height: 15.r,),
              Text("If you have any questions regarding billing,"
                  " payment methods, invoices, or any other "
                  "payment-related matters, please feel free"
                  " to let us know. We're here to help ensure a smooth and"
                  " hassle-free payment experience for you.",style: smallTextStyle.copyWith(),textAlign: TextAlign.justify,),
            ],
          ),
          ),
              SizedBox(height: 30.r,),
              Container(
              height: 300.r,
               decoration: BoxDecoration(
                 border: Border.all(color: Colors.grey.shade300),
               borderRadius: BorderRadius.circular(10.r),
            ),
          ),
            ],
          ),
        ),
      )
    );
  }
}
