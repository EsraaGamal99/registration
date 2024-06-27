
import 'package:elmadsarah/Core/Theming/colors.dart';
import 'package:flutter/material.dart';

class HasDifficulies extends StatefulWidget {
  const HasDifficulies({
    super.key,
  });

  @override
  State<HasDifficulies> createState() => _HasDifficuliesState();
}

class _HasDifficuliesState extends State<HasDifficulies> {
  final TextEditingController _difficultController = TextEditingController();
  final List<String> difficultOptions = ['نعم لدي اعاقة', 'لا ليس لدي اعاقة'];
  String? _selectedDifficult;

  @override
  void dispose() {
    _difficultController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DropdownButtonFormField<String>(
          value: _selectedDifficult,
          decoration: InputDecoration(
            label: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'هل تواجه أي صعوبات في الدراسة؟',
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
              _selectedDifficult = value;
              _difficultController.text = value!;
            });
          },
          items: difficultOptions.map((option) {
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

