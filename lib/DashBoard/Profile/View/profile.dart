import 'package:bankforcustomer/AppConstent/color.dart';
import 'package:bankforcustomer/AppConstent/textstyle.dart';
import 'package:bankforcustomer/DashBoard/Home/Widget/CoustomDailog.dart';
import 'package:bankforcustomer/DashBoard/Home/Widget/CoustomField.dart';
import 'package:bankforcustomer/DashBoard/Profile/View/changepassword.dart';
import 'package:bankforcustomer/DashBoard/Profile/View/changepin.dart';
import 'package:bankforcustomer/DashBoard/Profile/View/personaldetails.dart';
import 'package:bankforcustomer/DashBoard/Profile/View/privacy-policy.dart';
import 'package:bankforcustomer/SplashScreen/View/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}
class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height:150.r,
              width: Get.width,
              child: Image.asset("assets/images/profilebg.png",fit: BoxFit.fill,),
            ),
            SizedBox(height: 10.r,),
            Container(
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 3.r/2.2.r,
                  mainAxisSpacing: 0,
                ),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      color: Colors.white,
                      width:200.r,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage("assets/images/createupi.png"),height: 45.r,),
                          SizedBox(height: 5.r,),
                          Text("Create UPI",style: smallTextStyle2,textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      width:200.r,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage("assets/images/addbank.png"),height: 45.r,),
                          SizedBox(height: 5.r,),
                          Text("Add Bank",style: smallTextStyle2,textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      width:200.r,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage("assets/images/bankb.png"),height: 45.r,),
                          SizedBox(height: 5.r,),
                          Text("Bank Balance",style: smallTextStyle2,textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      width:200.r,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage("assets/images/payreq.png"),height: 45.r,),
                          SizedBox(height: 5.r,),
                          Text("Payment Request",style: smallTextStyle2,textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                    Get.to(()=>changepassword());
                    },
                    child: Container(
                      width:200.r,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage("assets/images/changepas.png"),height: 45.r,),
                          SizedBox(height: 5.r,),
                          Text("Change Password",style: smallTextStyle2,textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                    Get.to(()=>changepin());
                    },
                    child: Container(
                      width:200.r,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage("assets/images/changpin.png"),height: 45.r,),
                          SizedBox(height: 5.r,),
                          Text("Change Pin",style: smallTextStyle2,textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                    Get.to(()=>PersonalDetails());
                    },
                    child: Container(
                      width:200.r,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage("assets/images/personal.png"),height: 45.r,),
                          SizedBox(height: 5.r,),
                          Text("Personal Details",style: smallTextStyle2,textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      AlertLogout();
                    },
                    child: Container(
                      width:200.r,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage("assets/images/logout1.png"),height: 45.r,),
                          SizedBox(height: 5.r,),
                          Text("Logout",style: smallTextStyle2,textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      width:200.r,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage("assets/images/approved.png"),height: 45.r,),
                          SizedBox(height: 5.r,),
                          Text("Active Profile",style: smallTextStyle2,textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      width:200.r,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage("assets/images/add-user.png"),height: 45.r,),
                          SizedBox(height: 5.r,),
                          Text("Add Member",style: smallTextStyle2,textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: (){
                     Get.to(()=>Privacy_Policy());
                    },
                    child: Container(
                      width:200.r,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage("assets/images/privacy-policy.png"),height: 45.r,),
                          SizedBox(height: 5.r,),
                          Text("Privacy Policy",style: smallTextStyle2,textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
  void AlertLogout() {
    print("object");
    showAnimatedDialog1(
        context,
        Center(
            child: Container(
              width: 320.r,
              height: 300.r,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r)
              ),
              padding:EdgeInsets.all(
                  20.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50.r,
                    child: Image.asset("assets/images/logt.png"),
                  ),
                  SizedBox(height: 20.r,),
                  Text("Are You Sure !",style: bodyText1Style.copyWith(fontSize: 22.r ,color: Colors.black,decoration: TextDecoration.none),),
                  SizedBox(height: 12.r,),
                  Text("if you want to logout please press Logout otherwise Cancel",textAlign:TextAlign.center,style: smallTextStyle.copyWith( color: Colors.black,decoration: TextDecoration.none,fontSize: 14.r)
                  ),
                  SizedBox(height: 50.r,),
                  Column(
                    children: [
                      Row(
                        children: [
                          MaterialButton(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.r))),
                              elevation: 5.0,
                              minWidth: 120.r,
                              height: 40.r,
                              color: Color(0xFF25A48B),
                              child:  Text('Cancel',
                                  style: new TextStyle(fontSize: 16.r, color: Colors.white)),
                              onPressed: () {
                                Get.back();
                              }),
                          Spacer(),
                          MaterialButton(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.r))),
                              elevation: 5.0,
                              minWidth: 120.r,
                              height: 40.r,
                              color: Color(0xFFC90032),
                              child:  Text('Logout',
                                  style: new TextStyle(fontSize: 16.r, color: Colors.white)),
                              onPressed: () {
                              Get.to(()=>SplashScreen());
                              }),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )

        ),
        dismissible: true);
}
}
