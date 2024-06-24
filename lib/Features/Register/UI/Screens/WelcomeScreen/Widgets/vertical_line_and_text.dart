import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerticalLineAndText extends StatelessWidget {
  final  Color color;
  final  String text;
  const VerticalLineAndText({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          IntrinsicHeight(
            child: Row(
              children: [
                Container(
                  width: 8.w, // Width of the vertical line
                  height: 116.h, // Height of the vertical line
                  decoration: BoxDecoration(
                    color: color, // Color of the vertical line
                    borderRadius: BorderRadius.circular(8), // Radius for rounded ends
                  ),
                ),
                SizedBox(width: 15.w,),
                Expanded(
                  child: Text(
                    text,
                    style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.h,),
        ],
      );
  }
}
