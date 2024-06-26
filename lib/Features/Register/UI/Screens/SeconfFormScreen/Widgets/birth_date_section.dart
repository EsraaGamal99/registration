import 'package:elmadsarah/Core/Theming/colors.dart';
import 'package:elmadsarah/Core/Widgets/text_field.dart';
import 'package:flutter/material.dart';

class BirthDateSection extends StatefulWidget {
  const BirthDateSection({super.key});

  @override
  State<BirthDateSection> createState() => _BirthDateSectionState();
}

class _BirthDateSectionState extends State<BirthDateSection> {
  DateTime selectedDate = DateTime.now();
  final TextEditingController _dateController = TextEditingController();

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != DateTime.now())
      setState(() {
        _dateController.text = "${picked.toLocal()}".split(' ')[0];
      });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextField(
          hintText: 'تاريخ الميلاد',
          mainHintText: 'تاريخ الميلاد',
          onTap: () async {
            // Hide the keyboard
            FocusScope.of(context).requestFocus(FocusNode());
            // Show date picker when the field is tapped
            await _selectDate(context);
          },
          controller: _dateController,
          readOnly: true,
          suffixIcon: Icon(Icons.calendar_month, color: Colors.grey),
          validator: (val) {
            if (val!.isEmpty) {
              return 'الرجاء ادخال تاريخ الميلاد';
            }
            return null;
          },
        ),
      ],
    );
  }
}


