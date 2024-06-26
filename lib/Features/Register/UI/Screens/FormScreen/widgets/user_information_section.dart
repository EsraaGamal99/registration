import 'package:elmadsarah/Core/Helpers/functions/validators.dart';
import 'package:elmadsarah/Core/Widgets/text_field.dart';
import 'package:elmadsarah/Features/Register/UI/Screens/FormScreen/widgets/password_matching.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserInformationSection extends StatelessWidget {
  const UserInformationSection({
    super.key,
    required this.fNameController,
    required this.lNameController,
    required this.phoneController,
    required this.emailController,
    required this.passwordController,
    required this.confirmPasswordController,
  });

  final TextEditingController fNameController;
  final TextEditingController lNameController;
  final TextEditingController phoneController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          hintText: 'الاسم الأول',
          controller: fNameController,
          validator: (value) {
            if (value!.isEmpty) {
              return 'برجاء ادخال الاسم الأول';
            } else if (!lettersFormat.hasMatch(value)) {
              return 'برجاء ادخال حروف فقط';
            }
            return null;
          },
        ),
        SizedBox(height: 20.h),
        CustomTextField(
          hintText: 'اسم العالة',
          controller: lNameController,
          validator: (value) {
            if (value!.isEmpty) {
              return 'برجاء ادخال اسم العائلة';
            } else if (!lettersFormat.hasMatch(value)) {
              return 'برجاء ادخال حروف فقط';
            }
            return null;
          },
        ),
        SizedBox(height: 20.h),
        CustomTextField(
          hintText: 'رقم الموبايل',
          controller: phoneController,
          validator: (value) {
            if (value!.isEmpty) {
              return 'برجاء ادخال رقم الهاتف';
            } else if (!phoneFormat.hasMatch(value)) {
              return 'برجاء ادخال رقم هاتف صحيح';
            }
            return null;
          },
        ),
        SizedBox(height: 20.h),
        CustomTextField(
          hintText: 'البريد الألكتروني',
          controller: emailController,
          validator: (value) {
            if (value!.isEmpty) {
              return 'برجاء ادخال البريد الألكتروني';
            } else if (!emailFormat.hasMatch(value)) {
              return 'برجاء ادخال بريد الكتروني صحيح';
            }
            return null;
          },
        ),
        PasswordMatching(
          passwordController: passwordController,
          confirmPasswordController: confirmPasswordController,
        ),
      ],
    );
  }
}
