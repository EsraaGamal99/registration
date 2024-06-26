import 'package:flutter/material.dart';

class CustomStepper extends StatelessWidget {
  final int currentStep;

  const CustomStepper({super.key, required this.currentStep});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(8, (index) {
        return Expanded(
          child: Container(
            height: 10,
            margin: EdgeInsets.symmetric(horizontal: 1),
            color: index < currentStep ? Colors.green : Colors.grey,
            child: index == currentStep - 1
                ? Center(
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  )
                : SizedBox.shrink(),
          ),
        );
      }),
    );
  }
}
