import 'package:flutter/material.dart';

class CustomDropdownButton extends StatefulWidget {
  const CustomDropdownButton({super.key});

  @override
  _CustomDropdownButtonState createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  String? _selectedGender; // Variable to hold selected gender

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        hint: Text('الجنس'), // Hint text
        value: _selectedGender, // Current selected value
        items: [
          DropdownMenuItem<String>(
            value: 'male',
            child: Text('ذكر'),
          ),
          DropdownMenuItem<String>(
            value: 'female',
            child: Text('أنثى'),
          ),
        ],
        onChanged: (value) {
          setState(() {
            _selectedGender = value;
          });
        },
      ),
    );
  }
}