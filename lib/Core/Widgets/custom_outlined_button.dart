import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Theming/colors.dart';

class CustomOutlinedButton extends StatelessWidget {
  final String text;
  final String icon;

  const CustomOutlinedButton({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(icon,height: 25,width: 25,),
          SizedBox(width: 10.w),
          Text(text),
        ],
      ),
      style: OutlinedButton.styleFrom(
        minimumSize: Size(150, 50), // Width: 150, Height: 50
        side: BorderSide(color: kPrimaryColor, width: 1.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(8)), // This makes the button rectangular
        ),
      ),
    );
  }
}
