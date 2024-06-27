import 'package:elmadsarah/Core/Widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordMatching extends StatefulWidget {
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;

  const PasswordMatching(
      {super.key,
        required this.passwordController,
        required this.confirmPasswordController});

  @override
  State<PasswordMatching> createState() =>
      _PasswordMatchingState();
}

class _PasswordMatchingState extends State<PasswordMatching> {
  String errorMessage = '';
  bool obscureText = true;
  bool obscureText2 = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20.h),
        CustomTextField(
          obscureText: obscureText,
          hintText: ' كلمة المرور',
          controller: widget.passwordController,
          validator: (value) {
            if (value!.isEmpty) {
              return 'برجاء ادخال كلمة السر';
            } else if (value.length < 8) {
              return 'برجاء ادخال 8 عناصر على الاقل';
            }
            return null;
          },
        ),
        SizedBox(height: 20.h),
        CustomTextField(
          obscureText: obscureText2,
          hintText: 'تأكيد كلمة المرور',
          controller: widget.confirmPasswordController,
          onChanged: (_) {
            setState(() {
              if (widget.passwordController.text != widget.confirmPasswordController.text) {
                errorMessage = 'كلمة المرور غير متطابقة';
              } else {
                errorMessage = '';
              }
            });
          },
          validator: (value) {
            if (value!.isEmpty) {
              return 'برجاء ادخال كلمة السر';
            } else if (value.length < 8) {
              return 'برجاء ادخال 8 عناصر على الاقل';
            } else if (widget.passwordController.text != widget.confirmPasswordController.text) {
              return 'كلمة المرور غير متطابقة';
            }
            return null;
          },

        ),
        SizedBox(
            height: 5.h
        ),
        errorMessage.isNotEmpty
            ? Text(
          errorMessage,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: Colors.red,
          ),
        )
            : const SizedBox(),
        SizedBox(height: 30.h),
      ],
    );
  }
}
