import 'package:elmadsarah/Core/Theming/colors.dart';
import 'package:flutter/material.dart';

class HaveAnAccount extends StatelessWidget {
  const HaveAnAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('هل لديك حساب؟'),
        TextButton(
          onPressed: () {

          },
          child: const Text(
            'تسجيل الدخول',
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
