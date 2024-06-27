import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../Core/Theming/colors.dart';

class SubjectCardWidget extends StatelessWidget {
  final String subjectImage;
  final String subjectTitle;

  const SubjectCardWidget(
      {super.key, required this.subjectImage, required this.subjectTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            subjectImage,
            height: 50.h,
            width: 50.w,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10.h),
          Text(
            subjectTitle,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: MyColors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
