import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:elmadsarah/Core/Theming/colors.dart';

class ParentOrStudent extends StatelessWidget {
  final String type;
  final Color backgroundColor;
  final bool isSelected;
  final Function(String) onSelect;

  const ParentOrStudent({
    super.key,
    required this.type,
    required this.backgroundColor,
    required this.isSelected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onSelect(type);
      },
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: backgroundColor,
            radius: 50.r,
          ),
          SizedBox(height: 10.h,),
          Row(
            children: [
              if (isSelected)
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    border: Border.all(color: kPrimaryColor, width: 3),
                  ),
                  child: Icon(Icons.check, color: kPrimaryColor, size: 18.sp,),
                ),
              SizedBox(width: 8.w,),
              Text(
                type,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: isSelected ? kPrimaryColor : Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
