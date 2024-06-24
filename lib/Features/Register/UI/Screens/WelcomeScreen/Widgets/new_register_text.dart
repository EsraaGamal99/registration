import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewRegisterText extends StatelessWidget {
  const NewRegisterText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          height: 80.h,
        ),
        Text(
          'تسجيل جديد',
          style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.w900),
        ),
        SizedBox(height: 25.h,),
      ],
    );
  }
}
