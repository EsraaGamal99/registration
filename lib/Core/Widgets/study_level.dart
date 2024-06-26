import 'package:flutter/material.dart';

class ChoiceChipExample extends StatefulWidget {
  @override
  _ChoiceChipExampleState createState() => _ChoiceChipExampleState();
}

class _ChoiceChipExampleState extends State<ChoiceChipExample> {
  String? _selectedStage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'حدد المرحلة الدراسية:',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Wrap(
            spacing: 10.0, // Horizontal spacing between chips
            runSpacing: 10.0, // Vertical spacing between lines
            children: [
              ChoiceChip(
                label: Text('رياض الأطفال'),
                selected: _selectedStage == 'رياض الأطفال',
                onSelected: (selected) {
                  setState(() {
                    _selectedStage = selected ? 'رياض الأطفال' : null;
                  });
                },
              ),
              ChoiceChip(
                label: Text('التعليم الابتدائي'),
                selected: _selectedStage == 'التعليم الابتدائي',
                onSelected: (selected) {
                  setState(() {
                    _selectedStage = selected ? 'التعليم الابتدائي' : null;
                  });
                },
              ),
              ChoiceChip(
                label: Text('التعليم المتوسط'),
                selected: _selectedStage == 'التعليم المتوسط',
                onSelected: (selected) {
                  setState(() {
                    _selectedStage = selected ? 'التعليم المتوسط' : null;
                  });
                },
              ),
              ChoiceChip(
                label: Text('التعليم الثانوي'),
                selected: _selectedStage == 'التعليم الثانوي',
                onSelected: (selected) {
                  setState(() {
                    _selectedStage = selected ? 'التعليم الثانوي' : null;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}