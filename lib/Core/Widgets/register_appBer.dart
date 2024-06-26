import 'package:elmadsarah/Core/Widgets/vertical_line_and_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Theming/colors.dart';
import 'custom_stepper.dart';

class RegisterAppBar extends StatelessWidget {
  final int currentStep;

  final Color lineColor;
  final String? text;

  const RegisterAppBar({
    super.key, required this.currentStep, required this.lineColor, this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'المدرسة.كوم',
                  style: TextStyle(
                      fontSize: 30.sp,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  'El Madrasah.com',
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Spacer(),
            Text(
              'تخطي',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
        SizedBox(height: 15.h),
        CustomStepper( currentStep: currentStep),
        SizedBox(height: 15.h),
        VerticalLineAndText(color: lineColor, text: text ?? ''),
      ],
    );
  }
}
