import 'package:bankforcustomer/AppConstent/color.dart';
import 'package:bankforcustomer/AppConstent/textstyle.dart';
import 'package:flutter/material.dart';

class BankStatement extends StatefulWidget {
  const BankStatement({Key? key}) : super(key: key);

  @override
  State<BankStatement> createState() => _BankStatementState();
}

class _BankStatementState extends State<BankStatement> {


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: TColor.Text,
          title: Text("Bank Statement"),
        ),
        body: Center(
          child: Text("Hello World"),
        ),
      ),
    );
  }
  Future<bool> _onBackPressed() async {
    return (
        await showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Are You sure.....!'),
            content: Text('Are you sure you want to exit?'),
            actions:[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: Text('No',style:bodyText3Style.copyWith(color: TColor.Text),),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: Text('Yes',style:bodyText3Style.copyWith(color: TColor.Text),),
              ),
            ],
          ),
        )) ??
        false;
  }
}
