
import 'package:elmadsarah/Core/Theming/colors.dart';
import 'package:flutter/material.dart';

class SelectGander extends StatefulWidget {
  const SelectGander({
    super.key,
  });

  @override
  State<SelectGander> createState() => _SelectGanderState();
}

class _SelectGanderState extends State<SelectGander> {
  final TextEditingController _genderController = TextEditingController();
  final List<String> genderOptions = ['ذكر', 'أنثى'];
  String? _selectedGender;

  @override
  void dispose() {
    _genderController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DropdownButtonFormField<String>(
          value: _selectedGender,
          decoration: InputDecoration(
            //labelText: 'الجنس',
            label: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'الجنس',
                    style: TextStyle(
                      color: Color(0x66373C3F),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text: ' *',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
            labelStyle: TextStyle(fontSize: 18,
              color: Color(0x66373C3F),
            ),
            border: OutlineInputBorder(),
            focusColor: kPrimaryColor,
            contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          ),
          onChanged: (value) {
            setState(() {
              _selectedGender = value;
              _genderController.text = value!;
            });
          },
          items: genderOptions.map((option) {
            return DropdownMenuItem<String>(
              value: option,
              child: Text(option),
            );
          }).toList(),
        ),
      ],
    );
  }
}

