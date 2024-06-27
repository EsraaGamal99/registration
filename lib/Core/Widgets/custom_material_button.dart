import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Theming/colors.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.isFullWidth = true, this.backgroundColor, this.labelColor, this.width,
  });
///////new
  final void Function()? onPressed;
  final String label;
  final bool isFullWidth;
  final Color? backgroundColor;
  final Color? labelColor;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: kPrimaryColor),
        color: (label=='السابق') ? Colors.white : kPrimaryColor,
      ),
      width: isFullWidth ? double.infinity : width,
      child: MaterialButton(
        onPressed: onPressed,
        child: Center(
          child: Row(
            children: [
              (label=='السابق') ?Icon( Icons.keyboard_double_arrow_right_outlined,color: kPrimaryColor, ):SizedBox(),
              SizedBox(width: 10.w,),
              Text(
                label,
                style: TextStyle(
                  color: (label=='السابق') ?kPrimaryColor:Colors.white,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              (label!='السابق') ?Icon( Icons.keyboard_double_arrow_left_outlined,color: Colors.white, ):SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
