import 'package:elmadsarah/Core/Routing/routs_name.dart';
import 'package:elmadsarah/Core/Theming/colors.dart';
import 'package:elmadsarah/Core/Widgets/custom_material_button.dart';
import 'package:elmadsarah/Features/Register/UI/Screens/WelcomeScreen/Widgets/have_an_account.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'Widgets/choose_parent_or_student.dart';
import 'Widgets/new_register_text.dart';
import 'Widgets/vertical_line_and_text.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const NewRegisterText(),
            const VerticalLineAndText(
              color: kPrimaryColor,
              text:
                  'هل انت طالب تسعى لتوسيع افاقك وفتح ابواب المعرفة؟ ام ولي أمر تورد متابعة رحلة ابنك التعليمية ودعمه في اكتشاف شغفه',
            ),
            const ChooseParentOrStudent(),
            SizedBox(
              height: 35.h,
            ),
            Center(
              child: CustomMaterialButton(
                onPressed: () {
                  GoRouter.of(context).pushNamed(RoutsName.formScreen);
                },
                label: 'التالي',
              ),
            ),
            const Spacer(),
            const HaveAnAccount(),
          ],
        ),
      ),
    );
  }
}


