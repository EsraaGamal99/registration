import 'package:flutter/material.dart';

class DiscountCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            color: Colors.red[100],
            child: Text(
              'خصم 25%',
              style: TextStyle(color: Colors.red),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'ثلاثة فصول دراسية\nأنا عنصر نشط!',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 10),
          Text(
            '650 درهم',
            style: TextStyle(color: Colors.green, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
