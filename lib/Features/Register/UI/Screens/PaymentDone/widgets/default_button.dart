import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../Core/Theming/colors.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  const DefaultButton({super.key, required this.text, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: TextButton(
        onPressed: onPress,
        child:  Text(
         text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
            color: white,
          ),
        ),
      ),
    );
  }
}
