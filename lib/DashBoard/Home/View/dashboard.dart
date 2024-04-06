import 'package:bankforcustomer/AppConstent/color.dart';
import 'package:bankforcustomer/AppConstent/textstyle.dart';
import 'package:bankforcustomer/DashBoard/Home/Controller/controller.dart';
import 'package:bankforcustomer/DashBoard/Home/View/home_page.dart';
import 'package:bankforcustomer/DashBoard/Home/Widget/CoustomDailog.dart';
import 'package:bankforcustomer/DashBoard/Notification/notification.dart';
import 'package:bankforcustomer/DashBoard/Profile/View/profile.dart';
import 'package:bankforcustomer/DashBoard/SearchScreen/search_screen.dart';
import 'package:bankforcustomer/SplashScreen/View/splash_screen.dart';
import 'package:bankforcustomer/Widget/coustomanimation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final HomeController controller = Get.put(HomeController());
  DateTime? currentBackPressTime;

  final List<Widget> _pages = [
    const homepage(),
    const Support(),
    const profile(),
    const Notifications(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (controller. SelectIndex!= 0) {
          setState(() {
            controller.SelectIndex(0);
          });
          return false;
        } else if (currentBackPressTime == null ||
            DateTime.now().difference(currentBackPressTime!) > Duration(seconds: 2)) {
          currentBackPressTime = DateTime.now();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Press again to exit'),
              backgroundColor: TColor.Text, // Customize background color
              behavior: SnackBarBehavior.floating, // Floating behavior
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ), // Custom shape
              duration: Duration(seconds: 2), // Duration for how long the snackbar is displayed
              action: SnackBarAction(
                label: 'Dismiss',
                onPressed: () {

                },
                textColor: Colors.white, // Text color of the action
              ),
              elevation: 8.r, // Elevation of the snackbar
              margin: EdgeInsets.all(20.r), // Margin around the snackbar
            ),
          );
          return false;
        }
        return true;
      },
      child: Scaffold(
        appBar:  buildAppBar(controller.SelectIndex.value),
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   elevation: 4,
        //   leadingWidth: 0.r,
        //   title:Row(
        //     children: [
        //       Text("Nidhi",style: styless.copyWith(color: TColor.Text,fontSize: 34.r),),
        //       Text("Bank",style: styless,),
        //     ],
        //   ),
        //   actions: [
        //     InkWell(
        //       onTap: (){
        //         AlertLogout();
        //       },
        //       child: Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Column(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             Icon(Icons.power_settings_new_rounded,color: Colors.red,),
        //             Text("Logout",style: bodyText3Style.copyWith(fontSize: 10.r),)
        //           ],
        //         ),
        //       ),
        //     )
        //   ],
        // ),
          body: _pages[controller.SelectIndex.value],
          bottomNavigationBar: Obx(() => BottomNavigationBar(
          selectedItemColor: TColor.Text,
          showUnselectedLabels: true,
          unselectedFontSize: 9.r,
          selectedLabelStyle:
          bodyText3Style.copyWith(color: TColor.Text, fontSize: 9.r),
          unselectedLabelStyle:
          bodyText3Style.copyWith(color: Colors.grey, fontSize: 9.r),
          unselectedItemColor: Colors.grey.shade600,
          currentIndex: controller.SelectIndex.value,
          onTap: (int index) {
            setState(() { });
            switch (index) {
              case 0:
                controller.SelectIndex.value = 0;
                break;
              case 1:
                controller.SelectIndex.value = 1;
                break;
              case 2:
                controller.SelectIndex.value = 2;
                break;
              case 3:
                controller.SelectIndex.value = 3;
                break;
            }
          },
          items:const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contact_support_outlined),
              label: 'Support',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notification',
            ),
          ],
        )),
      ),
    );
  }
  AppBar buildAppBar(int selectedIndex) {
    if (selectedIndex == 1) {
      return AppBar(
        backgroundColor: TColor.white,
        centerTitle: true,
        elevation: 0.0.r,
        title: Text("Help & Support",style: bodyText3Style.copyWith(fontSize: 14.r),)
      );
    } else {
      return AppBar(
        backgroundColor: Colors.white,
        elevation: 4,
        leadingWidth: 0.r,
        title: Row(
          children: [
            Text("Nidhi", style: styless.copyWith(color: TColor.Text, fontSize: 34.r)),
            Text("Bank", style: styless,),
          ],
        ),
        actions: [
          InkWell(
            onTap: () {
              AlertLogout();
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.power_settings_new_rounded, color: Colors.red,),
                  Text("Logout", style: bodyText3Style.copyWith(fontSize: 10.r)),
                ],
              ),
            ),
          )
        ],
      );
    }
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
  Future<bool> onWillPop() async {
    // ignore: unrelated_type_equality_checks
    if (controller.SelectIndex!= 0) {
      DateTime now = DateTime.now();
      if (currentBackPressTime == null ||
          now.difference(currentBackPressTime!) > const Duration(seconds: 2)) {
        controller.urlValue.value = "";
        currentBackPressTime = now;
        CustomAnimation().showCustomToast(
          'Press again to exit NidhiBank',
          isError: false,
        );
        return false;
      } else {
        return true;
      }
    } else {
      Navigator.of(context).popUntil((route) => route.isFirst);
      showExitSnackbar();
      return false;
    }
  }

  void showExitSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Press again to exit NidhiBank'),
        duration:  Duration(seconds: 2),
      ),
    );
  }
}
