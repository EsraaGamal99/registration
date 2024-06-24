import 'package:elmadsarah/Core/Helpers/assets.dart';
import 'package:elmadsarah/Core/Widgets/custom_material_button.dart';
import 'package:elmadsarah/Core/Widgets/custom_outlined_button.dart';
import 'package:elmadsarah/Core/Widgets/text_field.dart';
import 'package:elmadsarah/Features/Register/UI/Screens/WelcomeScreen/Widgets/new_register_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NewRegisterText(),
              CustomTextField(
                hintText: 'الاسم الأول',
              ),
              SizedBox(height: 20.h),
              CustomTextField(
                hintText: 'اسم العالة',
              ),
              SizedBox(height: 20.h),
              CustomTextField(
                hintText: 'رقم الموبايل',
              ),
              SizedBox(height: 20.h),
              CustomTextField(
                hintText: 'البريد الألكتروني',
              ),
              SizedBox(height: 20.h),
              CustomTextField(
                hintText: ' كلمة المرور',
              ),SizedBox(height: 20.h),
              CustomTextField(
                hintText: 'تأكيد كلمة المرور',
              ),
              SizedBox(height: 30.h),
              CustomMaterialButton(
                onPressed: () {},
                label: 'تسجيل جديد',
              ),
              SizedBox(height: 30.h),
              Center(
                child: Text(
                  'او تسجيل الدخول باستخدام',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              SizedBox(height: 15.h),
              CustomOutlinedButton(
                text: 'Google',
                icon: AssetsData.googleIcon,
              ),
              SizedBox(height: 20.h),
              CustomOutlinedButton(
                text: 'Apple',
                icon: AssetsData.appleIcon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

