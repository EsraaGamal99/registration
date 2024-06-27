import 'package:elmadsarah/Features/Register/UI/Screens/SubjectsScreen/widgets/subject_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/subject_model.dart';

class SubjectsGridView extends StatelessWidget {
  final List<Subject> subjects;
  const SubjectsGridView({super.key, required this.subjects});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding:  EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 20,
        childAspectRatio: 0.99,
        mainAxisExtent: 100,
      ),
      itemCount: subjects.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return  SubjectCardWidget(
          subjectImage:  subjects[index].image,
          subjectTitle: subjects[index].title,
        );
      },
    );
  }
}
