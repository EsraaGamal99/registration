import 'package:elmadsarah/Core/Helpers/assets.dart';
import 'package:elmadsarah/Core/Widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GoogleAndAppleSignUp extends StatelessWidget {
  const GoogleAndAppleSignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
    );
  }
}
