import 'package:flutter/material.dart';
class RadioListTileExample extends StatefulWidget {
  @override
  _RadioListTileExampleState createState() => _RadioListTileExampleState();
}

class _RadioListTileExampleState extends State<RadioListTileExample> {
  String? _selectedOption = 'yes'; // Initial selected option

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile<String>(
          title: Text('نعم لدي إضافة'),
          value: 'yes',
          groupValue: _selectedOption,
          onChanged: (value) {
            setState(() {
              _selectedOption = value;
            });
          },
        ),
        RadioListTile<String>(
          title: Text('لا ليس لدي أي إضافة'),
          value: 'no',
          groupValue: _selectedOption,
          onChanged: (value) {
            setState(() {
              _selectedOption = value;
            });
          },
        ),
      ],
    );
  }
}