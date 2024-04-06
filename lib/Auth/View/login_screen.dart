import 'package:bankforcustomer/AppConstent/color.dart';
import 'package:bankforcustomer/Auth/controller/controller.dart';
import 'package:bankforcustomer/DashBoard/Home/View/dashboard.dart';
import 'package:bankforcustomer/DashBoard/Home/View/home_page.dart';
import 'package:bankforcustomer/Auth/View/Sign.dart';
import 'package:bankforcustomer/Auth/View/forget_password.dart';
import 'package:bankforcustomer/SplashScreen/Widget/coustombutton.dart';
import 'package:bankforcustomer/SplashScreen/Widget/my_button.dart';
import 'package:bankforcustomer/SplashScreen/Widget/mytextfield.dart';
import 'package:bankforcustomer/Widget/textfromfield.dart';
import 'package:bankforcustomer/mathode/BaseController.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginController controller=Get.put(LoginController());
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
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 SizedBox(height: 50.r),
                Icon(
                  Icons.lock,
                  size: 50.r,
                ),

                const SizedBox(height: 50),

                Text(
                  'Welcome back you\'ve been missed!',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16.r,
                  ),
                ),

                SizedBox(height: 12.r,),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(" User-Id",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                    TextFieldContainer(
                      child: TextFormField(
                        controller: controller.UserId,
                        autofillHints: [AutofillHints.username],
                        onEditingComplete: ()=>TextInput.finishAutofillContext(),

                        decoration: InputDecoration(
                          hintText: "User-Id",
                          border: InputBorder.none,
                          icon: Icon(Icons.person_outline_rounded,color: Colors.black,),
                        ),
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.r,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(" Password",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                    TextFieldContainer(
                      child: TextFormField(
                        controller: controller.etPasswaord,
                        autofillHints: [AutofillHints.newPassword],
                        onEditingComplete: ()=>TextInput.finishAutofillContext(),
                        obscureText: _obscureText?true:false,

                        decoration: InputDecoration(
                          hintText: "Password",
                          border: InputBorder.none,
                          icon: Icon(Icons.lock_outline,color: Colors.black,),
                          suffixIcon: IconButton(
                              icon: Icon(
                                _obscureText ? Icons.visibility_off : Icons.visibility,color: Colors.black,
                              ),
                              onPressed:_toggleObscure
                          ),
                        ),
                        onFieldSubmitted: (value){
                          controller.signUpNetworkApi();
                        },
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                 SizedBox(height: 10.r),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 25.r),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap:(){
                              Get.to(()=>forgetpassword());
                        },
                        child: Text(
                          'Forgot Password ?',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ),
                    ],
                  ),
                ),

                 SizedBox(height: 20.r),

                // sign in button
                MyButton(
                  onPress: (){
                  controller.signUpNetworkApi();
                  }, text: 'Sign In',
                ),

                 SizedBox(height: 25.r),

                // or continue with
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

                // google + apple sign in buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    SquareTile(imagePath: "assets/images/google.png"),

                    SizedBox(width: 25.r),
                    SquareTile(imagePath: "assets/images/apple.png")
                  ],
                ),

                 SizedBox(height: 50.r),

                // not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                     SizedBox(width: 4.r),
                     InkWell(
                       onTap: (){
                         Get.to(()=>Sign());
                       },
                       child: Text(
                        'Register now',
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
    );
  }
}