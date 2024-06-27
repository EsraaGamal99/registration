import 'package:flutter/material.dart';

class RadioListTileExample extends StatefulWidget {
  final Function(String) onSelected;

  RadioListTileExample({required this.onSelected});

  @override
  _RadioListTileExampleState createState() => _RadioListTileExampleState();
}

class _RadioListTileExampleState extends State<RadioListTileExample> {
  String? _selectedOption;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        RadioListTile<String>(
          title: Text('نعم لدي إضافة'),
          value: 'yes',
          groupValue: _selectedOption,
          onChanged: (value) {
            setState(() {
              _selectedOption = value;
              widget.onSelected(value!);
              Navigator.pop(context);
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
              widget.onSelected(value!);
              Navigator.pop(context);
            });
          },
        ),
      ],
    );
  }
}
