import 'package:elmadsarah/Core/Theming/colors.dart';
import 'package:elmadsarah/Core/Widgets/custom_material_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: EdgeInsets.all( 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NewRegisterText(),
            VerticalLineAndText(
             color: kPrimaryColor,
              text: 'هل انت طالب تسعى لتوسيع افاقك وفتح ابواب المعرفة؟ ام ولي أمر تورد متابعة رحلة ابنك التعليمية ودعمه في اكتشاف شغفه',
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ParentOrStudent(
                    type: 'طالب',
                    backgroundColor: Colors.grey,
                  ),
                  SizedBox(
                    width: 40.w,
                  ),
                  ParentOrStudent(
                    type: 'ولي أمر',
                    backgroundColor: Colors.blue,

                  ),

                ],
              ),
            ),
            SizedBox(height: 35.h,),
            Center(
              child: CustomMaterialButton(
                onPressed: (){},
                label: 'التالي',
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('هل لديك حساب؟'),
                TextButton(onPressed: (){}, child: Text('تسجيل الدخول',style: TextStyle(color: kPrimaryColor),),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

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

