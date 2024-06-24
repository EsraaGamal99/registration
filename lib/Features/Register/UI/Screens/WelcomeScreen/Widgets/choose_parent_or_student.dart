import 'package:elmadsarah/Features/Register/UI/Screens/WelcomeScreen/Widgets/parent_or_student.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChooseParentOrStudent extends StatelessWidget {
  const ChooseParentOrStudent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const ParentOrStudent(
            type: 'طالب',
            backgroundColor: Colors.grey,
          ),
          SizedBox(
            width: 40.w,
          ),
          const ParentOrStudent(
            type: 'ولي أمر',
            backgroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
