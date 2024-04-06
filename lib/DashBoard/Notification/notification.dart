import 'package:bankforcustomer/AppConstent/color.dart';
import 'package:bankforcustomer/AppConstent/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  final ScrollController _scrollController = ScrollController();
  List<String> notifications = [
    "uday",
    "jsbuyg",
    "uday",
    "jsbuyg",
    "uday",
    "jsbuyg", "uday",
    "jsbuyg",
    "uday",
    "jsbuyg",
    "uday",
    "jsbuyg",
    "uday",
    "jsbuyg",
  ];

  int currentPage = 1;

  @override
  void initState() {
    super.initState();
    _loadData();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        _loadData();
      }
    });
  }

  void _loadData() {
    for (int i = 0; i < 10; i++) {
      notifications.add('Notification ${notifications.length + 1}');
    }
    setState(() {
      currentPage++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        color: TColor.Text,
        onRefresh: (){
          return Future.delayed(Duration.zero, () {

          });
        },
        child: ListView.builder(
          itemCount: notifications.length + 1,
          physics: BouncingScrollPhysics(),
          controller: _scrollController,
          itemBuilder: (context, index) {
            if (index < notifications.length) {
              return Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.0.w,
                      vertical: 4.0.h,
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 23.0.sp,
                          backgroundColor:
                          TColor.black,
                          child: Icon(
                            Icons.notifications,
                            size: 23.sp,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 8.0.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            mainAxisAlignment:
                            MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                notifications[index],
                                style: bodyText3Style.copyWith(
                                  color: TColor.black,
                                  fontSize: 12.r,
                                ),
                              ),
                              SizedBox(
                                height: 3.0.h,
                              ),
                              ReadMoreText(
                                trimLines: 2, trimMode: TrimMode.Line,
                                moreStyle: bodyText3Style.copyWith(fontSize: 10.r,),
                                lessStyle: bodyText3Style.copyWith(fontSize: 10.r,color:TColor.Text),
                                trimCollapsedText: 'Show more',
                                trimExpandedText: 'Show less',
                                "Try this free Product Description Generator that enables you to create beautiful and effective product descriptions that sell.",
                                style: smallTextStyle.copyWith(
                                  color: TColor.greyText,
                                  fontSize: 12.r,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 3.0.w),
                        Text(
                          "13-Jan-2024",
                          style: bodyText3Style.copyWith(color: TColor.grey,fontSize: 11.r),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: TColor.themecolor.withAlpha(100),
                  ),
                ],
              );
            } else if (index == notifications.length) {
              // Loading indicator at the end of the list
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return Container(); // Just a precaution, should not happen
            }
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
