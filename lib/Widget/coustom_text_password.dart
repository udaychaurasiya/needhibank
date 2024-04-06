import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
class CustomUnderLineTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String? hint;
  final Function(String)? onChange;
  final FormFieldValidator? validator;
  final int? length;
  final bool isPassword;
  final bool? isRead;
  final bool? boldNon;
  final Function()? onTap;
  final Color? prefixIconColor;
  final Color? hintColor;
  final List<TextInputFormatter>? inputFormatters;

  const CustomUnderLineTextField(
      {super.key, this.isPassword=false, this.controller, this.onChange, this.validator, this.length,
        this.isRead, this.onTap, this.inputFormatters, this.hint, this.prefixIconColor,
        this.hintColor, this.boldNon,});

  @override
  State<CustomUnderLineTextField> createState() => _CustomUnderLineTextFieldState();
}

class _CustomUnderLineTextFieldState extends State<CustomUnderLineTextField> {
  RxBool obscureText = true.obs;
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    // _focusNode.dispose();
    obscureText.value = !obscureText.value;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: widget.isPassword ? obscureText.value : false,
        focusNode: _focusNode,
        controller: widget.controller,
        decoration: InputDecoration(
          border:InputBorder.none,
          hintText: widget.hint,
          suffixIcon: IconButton(
              icon: Icon(
                obscureText.value ? Icons.visibility_off : Icons.visibility,color: Colors.black,
              ),
              onPressed:_toggle
          ),
          prefixIcon: Icon(Icons.lock_outline),
          hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
        ),
        validator: widget.validator,
        style:TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
    );
  }

  void _toggle() {
    setState(() {
      obscureText.value = !obscureText.value;
    });
  }
}
