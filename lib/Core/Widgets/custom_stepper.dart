import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Theming/colors.dart';

class CustomStepper extends StatelessWidget {
  final int currentStep;
  const CustomStepper({super.key, required this.currentStep});

  @override
  Widget build(BuildContext context) {
    double width = (MediaQuery.of(context).size.width - 40) / 8;

    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 15.h,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Container(
          width: width *  currentStep,
          height: 15.h,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: const EdgeInsets.all(4),
              width: 14.w,
              height: 8.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}