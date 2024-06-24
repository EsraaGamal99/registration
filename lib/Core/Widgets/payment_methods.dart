import 'package:flutter/material.dart';

class PaymentMethods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Image.asset('assets/visa.png', width: 40),
        SizedBox(width: 10),
        // Image.asset('assets/mastercard.png', width: 40),
        SizedBox(width: 10),
        // Image.asset('assets/amex.png', width: 40),
        SizedBox(width: 10),
        Text('بطاقة ائتمان'),
      ],
    );
  }
}
