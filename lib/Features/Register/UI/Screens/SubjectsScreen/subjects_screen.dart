import 'package:elmadsarah/Core/Widgets/back_and_next_buttons.dart';
import 'package:elmadsarah/Features/Register/UI/Screens/SubjectsScreen/models/subject_model.dart';
import 'package:elmadsarah/Features/Register/UI/Screens/SubjectsScreen/widgets/subjects_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Core/Theming/colors.dart';
import '../../../../../Core/Widgets/register_appBer.dart';

class SubjectsScreen extends StatelessWidget {
  const SubjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const RegisterAppBar(
                currentStep: 3,
                lineColor: kPrimaryColor,
                text: 'حدد المواد التي ترغب في تسجيلها وسنوفر لك الدعم اللازم للتحقيق أهدافك  الأكادمية',
              ),
              SizedBox(height: 20.h),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: 'حدد المواد التي ترغب في دراستها',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: MyColors.grey,
                        )),
                    TextSpan(
                        text: '*',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        )),
                  ],
                ),
              ),
              SubjectsGridView(
                subjects: [
                  Subject(
                    title: 'الأحياء',
                    image:
                        'https://cdn-icons-png.flaticon.com/512/1997/1997247.png',
                  ),
                  Subject(
                    title: 'الأحياء',
                    image:
                        'https://cdn-icons-png.flaticon.com/512/1997/1997247.png',
                  ),
                  Subject(
                    title: 'الأحياء',
                    image:
                        'https://cdn-icons-png.flaticon.com/512/1997/1997247.png',
                  ),
                  Subject(
                    title: 'الأحياء',
                    image:
                        'https://cdn-icons-png.flaticon.com/512/1997/1997247.png',
                  ),
                  Subject(
                    title: 'الأحياء',
                    image:
                        'https://cdn-icons-png.flaticon.com/512/1997/1997247.png',
                  ),
                  Subject(
                    title: 'الأحياء',
                    image:
                        'https://cdn-icons-png.flaticon.com/512/1997/1997247.png',
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackAndNextButtons(onPressed: (){}, label: 'السابق'),
                  SizedBox(width: 20.w),
                  BackAndNextButtons(onPressed: (){}, label: 'التالي'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
