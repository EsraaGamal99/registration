import 'package:elmadsarah/Core/Theming/colors.dart';
import 'package:elmadsarah/Core/Widgets/back_and_next_buttons.dart';
import 'package:elmadsarah/Core/Widgets/custom_material_button.dart';
import 'package:elmadsarah/Core/Widgets/custom_stepper.dart';
import 'package:elmadsarah/Core/Widgets/drop_down_button.dart';
import 'package:elmadsarah/Core/Widgets/register_appBer.dart';
import 'package:elmadsarah/Core/Widgets/text_field.dart';
import 'package:elmadsarah/Features/Register/UI/Screens/SeconfFormScreen/Widgets/has_difficulties.dart';
import 'package:elmadsarah/Features/Register/UI/Screens/SeconfFormScreen/Widgets/select_nationality.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Widgets/birth_date_section.dart';
import 'Widgets/select_gender.dart';

class SecondFormScreen extends StatelessWidget {
  const SecondFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const RegisterAppBar(
                currentStep: 1, lineColor: kPrimaryColor,text: 'نحن هنا لمساعدتك في رحلتك التعليمية. املأ بكل ثقة بيانات الاتصال الخاصة بك لنتمكن من توجيهك خطوة بخطوة'
              ),
              SizedBox(height: 20.h),
              BirthDateSection(),
              SizedBox(height: 20.h),
              SelectGander(),
              SizedBox(height: 20.h),
              SelectNationality(),
              SizedBox(height: 20.h),
              HasDifficulies(),
              SizedBox(height: 20.h),
              CustomTextField(
                maxLines: 2,
                addStar: false,
                hintText: 'هل ترغب في تقديم أي ملاحظات اضاقية حول احتياجاتك التعليمية او الدعم الذي تحتاجه؟',
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackAndNextButtons(onPressed: (){}, label: 'السابق', backgroundColor: Colors.white,labelColor: kPrimaryColor,isFullWidth: false,),
                  BackAndNextButtons(onPressed: (){}, label: 'التالي', backgroundColor: Colors.white,labelColor: kPrimaryColor,isFullWidth: false,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

