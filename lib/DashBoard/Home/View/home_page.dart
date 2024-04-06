import 'package:bankforcustomer/AppConstent/AppConstant.dart';
import 'package:bankforcustomer/AppConstent/textstyle.dart';
import 'package:bankforcustomer/DashBoard/Home/View/BankStatement.dart';
import 'package:bankforcustomer/DashBoard/Home/View/dth.dart';
import 'package:bankforcustomer/DashBoard/Home/View/prepaid.dart';
import 'package:bankforcustomer/DashBoard/Profile/View/changepassword.dart';
import 'package:bankforcustomer/DashBoard/Home/Widget/CoustomDailog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../AppConstent/color.dart';
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: RefreshIndicator(
        color: TColor.Text,
        onRefresh: (){
          return Future.delayed(Duration.zero, () {

          });
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10.r,),
              Center(
                child: Container(
                  width: Get.width/1.1.r,
                  height: 200.r,
                  decoration: BoxDecoration(
                    color: TColor.white,
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(0.r),topRight:Radius.circular(0.r),bottomLeft:Radius.circular(10.r),bottomRight:Radius.circular(10.r)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50.r,
                        color: Colors.blue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:  EdgeInsets.all(8.r),
                              child: Image.asset(
                                'assets/images/bank.png', // Replace with your chip image
                                width: 40.r,
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.all(8.r),
                              child: Text(
                                'Your Bank', // Replace with the actual bank name
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.r,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.r),
                        child: Text(
                          GetStorage().read(AppConstant.userName),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.r,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.r),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Card Number: ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.r,
                              ),
                            ),
                            Text(
                              '1234 5678 9012 3456', // Replace with the actual card number
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.r,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.r),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Valid Thru: 12/24', // Replace with the actual expiration date
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.r,
                              ),
                            ),
                            Text(
                              'CVV: 143', // Replace with the actual CVV
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.r,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              ///PREPAID & POSTPAID RECHARGE


              SizedBox(height: 15.r,),
              Container(
                padding: EdgeInsets.all(15.r),
                width: Get.width,
                color: TColor.Text,
                child: Text("Prepaid & postpaid recharge".toUpperCase(),style: bodyText3Style.copyWith(color: Colors.white),),
              ),
              SizedBox(height: 5.r,),
              Container(
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,

                    mainAxisSpacing: 2,
                  ),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    InkWell(
                      onTap:(){
                        Get.to(()=>prepaid());
                      },
                      child: Container(
                          width:100.r,
                          child: Column(
                            children: [
                              Image(image: AssetImage("assets/images/prepaid.png"),height: 55.r,),
                              SizedBox(height: 5.r,),
                              Text("Prepaid",style: smallTextStyle2,textAlign: TextAlign.center,)
                            ],
                          ),
                      ),
                    ),
                    Container(
                      width:100.r,
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/images/postpaid.png"),height: 55.r,),
                          SizedBox(height: 5.r,),
                          Text("Postpaid",style: smallTextStyle2,textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Get.to(()=>dth());
                      },
                      child: Container(
                        width:100.r,
                        child: Column(
                          children: [
                            Image(image: AssetImage("assets/images/dth.png"),height: 55.r,),
                            SizedBox(height: 5.r,),
                            Text("DTH",style: smallTextStyle2,textAlign: TextAlign.center,)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              ///BILL PAYMENT
              SizedBox(height: 15.r,),
              Container(
                padding: EdgeInsets.all(15.r),
                width: Get.width,
                color: TColor.Text,
                child: Text("Bill payments".toUpperCase(),style: bodyText3Style.copyWith(color: Colors.white),),
              ),
              SizedBox(height: 5.r,),
              Container(
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,

                    mainAxisSpacing: 2,
                  ),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Container(
                      width:100.r,
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/images/elect.png"),height: 45.r,),
                          SizedBox(height: 5.r,),
                          Text("Electricity",style: smallTextStyle2,textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                    Container(
                      width:100.r,
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/images/water.png"),height: 45.r,),
                          SizedBox(height: 5.r,),
                          Text("Water",style: smallTextStyle2,textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                    Container(
                      width:100.r,
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/images/gas.png"),height: 45.r,),
                          SizedBox(height: 5.r,),
                          Text("GAS",style: smallTextStyle2,textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                    Container(
                      width:100.r,
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/images/gasbook.png"),height: 45.r,),
                          SizedBox(height: 5.r,),
                          Text("GAS Booking",style: smallTextStyle2,textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                    Container(
                      width:100.r,
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/images/insu.png"),height: 45.r,),
                          SizedBox(height: 5.r,),
                          Text("Insurance",style: smallTextStyle2,textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                    Container(
                      width:100.r,
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/images/wifi.png"),height: 45.r,),
                          SizedBox(height: 5.r,),
                          Text("Internet",style: smallTextStyle2,textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                    Container(
                      width:100.r,
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/images/telephone.png"),height: 45.r,),
                          SizedBox(height: 5.r,),
                          Text("Landline",style: smallTextStyle2,textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                    Container(
                      width:100.r,
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/images/emi.png"),height: 45.r,),
                          SizedBox(height: 5.r,),
                          Text("EMI",style: smallTextStyle2,textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                    Container(
                      width:100.r,
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/images/gate.png"),height: 40.r,),
                          SizedBox(height: 5.r,),
                          Text("Fas Tag",style: smallTextStyle2,textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              ///BANKING SERVICE
              SizedBox(height: 15.r,),
              Container(
                padding: EdgeInsets.all(15.r),
                width: Get.width,
                color: TColor.Text,
                child: Text("banking services".toUpperCase(),style: bodyText3Style.copyWith(color: Colors.white),),
              ),
              SizedBox(height: 8.r,),
              Container(
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,

                    mainAxisSpacing: 2,
                  ),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Container(
                      width:100.r,
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/images/otherbank.png"),height: 40.r,),
                          SizedBox(height: 5.r,),
                          Text("Other Bank Transfer",style: smallTextStyle2,textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Get.to(()=>BankStatement());
                      },
                      child: Container(
                        width:100.r,
                        child: Column(
                          children: [
                            Image(image: AssetImage("assets/images/bank-statement.png"),height: 40.r,),
                            SizedBox(height: 5.r,),
                            Text("Bank Statement",style: smallTextStyle2,textAlign: TextAlign.center,)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width:100.r,
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/images/bank-transfer.png"),height: 40.r,),
                          SizedBox(height: 5.r,),
                          Text("Fund Transfer",style: smallTextStyle2,textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                    Container(
                      width:100.r,
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/images/growth.png"),height: 40.r,),
                          SizedBox(height: 5.r,),
                          Text("Fas Tag",style: smallTextStyle2,textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                    Container(
                      width:100.r,
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/images/dd.png"),height: 40.r,),
                          SizedBox(height: 5.r,),
                          Text("DD/PIGMY",style: smallTextStyle2,textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                    Container(
                      width:100.r,
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/images/rd.png"),height: 40.r,),
                          SizedBox(height: 5.r,),
                          Text("RD Account",style: smallTextStyle2,textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                    Container(
                      width:100.r,
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/images/fixed.png"),height: 40.r,),
                          SizedBox(height: 5.r,),
                          Text("Fixed Deposit",style: smallTextStyle2,textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              ///LOAN SERVICE
              SizedBox(height: 15.r,),
              Container(
                padding: EdgeInsets.all(15.r),
                width: Get.width,
                color: TColor.Text,
                child: Text("Loan Services".toUpperCase(),style: bodyText3Style.copyWith(color: Colors.white),),
              ),
              SizedBox(height: 8.r,),
              Container(
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,

                    mainAxisSpacing: 2,
                  ),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Container(
                      width:100.r,
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/images/applyloan.png"),height: 40.r,),
                          SizedBox(height: 5.r,),
                          Text("Apply Loan",style: smallTextStyle2,textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                    Container(
                      width:100.r,
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/images/loan.png"),height: 40.r,),
                          SizedBox(height: 5.r,),
                          Center(child: Text("Loan",style: smallTextStyle2,textAlign: TextAlign.center,))
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
