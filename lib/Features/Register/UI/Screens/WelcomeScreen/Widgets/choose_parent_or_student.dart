import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:elmadsarah/Features/Register/UI/Screens/WelcomeScreen/Widgets/parent_or_student.dart';

class ChooseParentOrStudent extends StatefulWidget {
  const ChooseParentOrStudent({super.key});

  @override
  _ChooseParentOrStudentState createState() => _ChooseParentOrStudentState();
}

class _ChooseParentOrStudentState extends State<ChooseParentOrStudent> {
  String selectedType = '';

  void selectType(String type) {
    setState(() {
      selectedType = type;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ParentOrStudent(
            type: 'طالب',
            backgroundColor: Colors.grey,
            isSelected: selectedType == 'طالب',
            onSelect: selectType,
          ),
          SizedBox(
            width: 40.w,
          ),
          ParentOrStudent(
            type: 'ولي أمر',
            backgroundColor: Colors.blue,
            isSelected: selectedType == 'ولي أمر',
            onSelect: selectType,
          ),
        ],
      ),
    );
  }
}
