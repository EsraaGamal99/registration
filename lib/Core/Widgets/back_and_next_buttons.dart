import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Theming/colors.dart';

class BackAndNextButtons extends StatelessWidget {
  const BackAndNextButtons({
    super.key,
    required this.onPressed,
    required this.label,
    this.isFullWidth = true, this.backgroundColor, this.labelColor,
  });

  final void Function()? onPressed;
  final String label;
  final bool isFullWidth;
  final Color? backgroundColor;
  final Color? labelColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      width: isFullWidth ? double.infinity : null,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.r),
          ),
          padding: const EdgeInsets.all(10),
          backgroundColor: backgroundColor ?? kPrimaryColor,
        ),
        onPressed: onPressed,
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: labelColor??Colors.white,
              fontSize: 25.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
