import 'package:elmadsarah/Features/Register/UI/Screens/PaymentDone/widgets/default_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Core/Theming/colors.dart';
import '../../../../../Core/Widgets/register_appBer.dart';

class PaymentDoneScreen extends StatelessWidget {
  const PaymentDoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const RegisterAppBar(
                currentStep: 8,
                lineColor: yellowColor,
                text:
                    'شكرا لثقتك بنا! نحن في انتظارك لنبدأ معاً رحلة تعلم ملهمة ومثمرة.',
              ),
              SizedBox(height: 20.h),
              Image.network(
                height: 250.h,
                width: 250.w,
                'https://uxwing.com/wp-content/themes/uxwing/download/checkmark-cross/green-checkmark-line-icon.png',
              ),
              SizedBox(height: 20.h),
              Text(
                'تم الدفع بنجاح',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w900,
                  color: kPrimaryColor,
                ),
              ),
              Text(
                'شكرا لك على ثقتك في المدرسة دوت كوم',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                  color: kPrimaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: DefaultButton(
          text: 'توجه إلى جدولك الدراسي',
          onPress: () {},
        ),
      ),
    );
  }
}
