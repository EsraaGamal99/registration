import 'package:flutter/material.dart';

class DropdownButtonExample extends StatefulWidget {
  @override
  _DropdownButtonExampleState createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
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