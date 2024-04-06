import 'package:animated_list_item/animated_list_item.dart';
import 'package:bankforcustomer/AppConstent/color.dart';
import 'package:bankforcustomer/AppConstent/textstyle.dart';
import 'package:flutter/material.dart';
class tollfree_number extends StatefulWidget {
  const tollfree_number({Key? key}) : super(key: key);

  @override
  State<tollfree_number> createState() => _tollfree_numberState();
}

class _tollfree_numberState extends State<tollfree_number> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: TColor.Text,
        title: Text("DTH Toll Free Numbers",style: bodyText3Style.copyWith(color: Colors.white),),
      ),
     body: Center(
       child: Text("Hello Satya!"),
     ),
    );
  }
}
