import 'package:elmadsarah/Core/Widgets/custom_material_button.dart';
import 'package:elmadsarah/Features/Register/UI/Screens/WelcomeScreen/Widgets/new_register_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/google_and_apple_signUp.dart';
import 'widgets/user_information_section.dart';

class FormScreen extends StatelessWidget {
  final TextEditingController fNameController = TextEditingController();
  final TextEditingController lNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();

  FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const NewRegisterText(),
                UserInformationSection(
                    fNameController: fNameController,
                    lNameController: lNameController,
                    phoneController: phoneController,
                    emailController: emailController,
                    passwordController: passwordController,
                    confirmPasswordController: confirmPasswordController),
                CustomMaterialButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Perform registration logic here
                    }
                  },
                  label: 'تسجيل جديد',
                ),
                SizedBox(height: 30.h),
                const Center(
                  child: Text(
                    'او تسجيل الدخول باستخدام',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                const GoogleAndAppleSignUp(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
