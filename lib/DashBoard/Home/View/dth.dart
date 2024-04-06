import 'package:bankforcustomer/AppConstent/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class dth extends StatefulWidget {
  const dth({Key? key}) : super(key: key);

  @override
  State<dth> createState() => _dthState();
}

class _dthState extends State<dth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Operator"),
        backgroundColor: TColor.Text,
      ),
      body: Container(
          padding: EdgeInsets.all(12.0),
          child: GridView.builder(
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 2.r/2.r,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0
            ),
            itemBuilder: (BuildContext context, int index) {
              return Card(
                color: Colors.white,
              );
            },
          )),
    );
  }
}
