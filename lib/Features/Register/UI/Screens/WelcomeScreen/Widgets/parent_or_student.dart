import 'package:elmadsarah/Core/Theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ParentOrStudent extends StatefulWidget {
  final String type;
  final Color backgroundColor;
  const ParentOrStudent({
    super.key, required this.type, required this.backgroundColor,
  });

  @override
  State<ParentOrStudent> createState() => _ParentOrStudentState();
}

class _ParentOrStudentState extends State<ParentOrStudent> {
  bool selected = false;
  int index = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selected = false;
    index = 0;
  }
  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () {
        selected = !selected;
        index++;
        setState(() {

          debugPrint(selected.toString());
          debugPrint(index.toString());

        });

      },
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: widget.backgroundColor,
            radius: 50.r,
          ),
          SizedBox(height: 10.h,),
          Row(
            children: [
              selected ? Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  border: Border.all(color: kPrimaryColor,width: 3),
                ),
                child: Icon(Icons.check,color: kPrimaryColor,size: 18.sp,),
              ):Container(),
              SizedBox(width: 8.w,),
              Text(widget.type,style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700,color: selected?kPrimaryColor:Colors.grey),),
            ],
          ),
        ],
      ),
    );
  }
}

