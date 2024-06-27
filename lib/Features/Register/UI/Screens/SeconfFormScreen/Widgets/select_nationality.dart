
import 'package:elmadsarah/Core/Theming/colors.dart';
import 'package:flutter/material.dart';

class SelectNationality extends StatefulWidget {
  const SelectNationality({
    super.key,
  });

  @override
  State<SelectNationality> createState() => _SelectNationalityState();
}

class _SelectNationalityState extends State<SelectNationality> {
  final TextEditingController _nationalityController = TextEditingController();
  final List<String> nationalOptions = ['مصر', 'سعودية','امارات'];
  String? _selectedNational;

  @override
  void dispose() {
    _nationalityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DropdownButtonFormField<String>(
          value: _selectedNational,
          decoration: InputDecoration(
            label: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'الجنسية',
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
              _selectedNational = value;
              _nationalityController.text = value!;
            });
          },
          items: nationalOptions.map((option) {
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

