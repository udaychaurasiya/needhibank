import 'package:bankforcustomer/AppConstent/color.dart';
import 'package:bankforcustomer/AppConstent/textstyle.dart';
import 'package:bankforcustomer/DashBoard/Home/Widget/CoustomField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class PersonalDetails extends StatefulWidget {
  const PersonalDetails({Key? key}) : super(key: key);

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:TColor.Text,
        title: Text("Profile",style:bodyText3Style.copyWith(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(18.r),
          child: Column(
            children: [
              Container(
                height: 150.r,
                width: 300.r,
                child: Image.asset("assets/images/splash.png"),
              ),
              Text("Collection officer".toUpperCase(),style:bodyText3Style.copyWith(fontSize: 20.r),),
              SizedBox(height: 10.r,),
              EditTextWidget(
                controller: TextEditingController(text: "9696813930"),
                heading: "Mobile no.",
                isRead: true,

              ),
              SizedBox(height: 8.r,),
              EditTextWidget(
                controller: TextEditingController(text: "udayjaisawal@gmail.com"),
                heading: "Email id",
                isRead: true,
              ),
              SizedBox(height: 8.r,),
              EditTextWidget(
                controller: TextEditingController(text: "UDAY CHAURASIYA"),
                heading: "User Name",
                isRead: true,
              ),
              SizedBox(height: 8.r,),
              EditTextWidget(
                controller: TextEditingController(text: "NIDHI1"),
                heading: "Member Id",
                isRead: true,
              ),
              SizedBox(height: 8.r,),
              EditTextWidget(
                controller: TextEditingController(text: "*********1393M"),
                heading: "Pan No.",
                isRead: true,
              ),
              SizedBox(height: 8.r,),
              EditTextWidget(
                controller: TextEditingController(text: "**********3930"),
                heading: "Aadhar no.",
                isRead: true,
              ),
              SizedBox(height: 8.r,),
              EditTextWidget(
                controller: TextEditingController(text: "29 Jan 2024"),
                heading: "Joining Date",
                isRead: true,
              ),
            ],
          ),
        ),
      )
    );
  }
}
