import 'package:bankforcustomer/Auth/View/login_screen.dart';
import 'package:bankforcustomer/DashBoard/Home/View/dashboard.dart';
import 'package:bankforcustomer/Auth/View/otp_veryfy.dart';
import 'package:bankforcustomer/SplashScreen/Widget/coustombutton.dart';
import 'package:bankforcustomer/SplashScreen/Widget/my_button.dart';
import 'package:bankforcustomer/Widget/textfromfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../AppConstent/color.dart';

class Sign extends StatefulWidget {
  Sign({Key? key}) : super(key: key);

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  final _formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  bool _obscureText = true;

  void _toggleObscure() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 100.r),
                  Icon(
                    Icons.lock,
                    size: 70.r,
                  ),
                   SizedBox(height: 50.r),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        " Mobile Number",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextFieldContainer(
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.r),
                              child: Text(
                                "+91",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20.r),
                              ),
                            ),
                            Expanded(
                              child: TextFormField(
                                controller: phoneNumberController,
                                keyboardType: TextInputType.phone,
                                autofillHints: [
                                  AutofillHints.telephoneNumberDevice
                                ],
                                onEditingComplete: () =>
                                    TextInput.finishAutofillContext(),
                                decoration: InputDecoration(
                                  hintText: "Phone Number",
                                  hintStyle: TextStyle(fontSize: 14.r),
                                  border: InputBorder.none,

                                ),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20.r),
                                validator: (value) {
                                  if (value == null ||
                                      value.trim().isEmpty ||
                                      value.length!= 10) {
                                    return 'Enter a valid 10-digit phone number';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.r),
                  SizedBox(height: 20.r),

                  MyButton(
                    onPress: () {
                    Get.to(()=>OtypVerifyPage());
                    },
                    text: 'Get OTP',
                  ),

                  SizedBox(height: 25.r),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'Or continue with',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 25.r),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SquareTile(imagePath: "assets/images/google.png"),
                      SizedBox(width: 25.r),
                      SquareTile(imagePath: "assets/images/apple.png")
                    ],
                  ),

                  SizedBox(height: 50.r),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      SizedBox(width: 4.r),
                      InkWell(
                        onTap: () {
                          Get.offAll(()=>LoginPage());
                        },
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            color: TColor.Text,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
