import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final TextAlign textAlign;
  final double? width;
  final double? height;
  final String? hintText;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool? readOnly;
  final String? labelText;

  const CustomTextField(
      {super.key,
      this.keyboardType,
      this.inputFormatters,
      this.textAlign = TextAlign.start,
      this.width,
      this.height,
      this.hintText,
      this.onChanged,
      this.onFieldSubmitted,
      this.controller,
      this.validator,
      this.readOnly,
      this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.done,
      validator: validator,
      controller: controller,
      onFieldSubmitted: onFieldSubmitted,
      onChanged: onChanged,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      cursorHeight: 20.h,
      decoration: InputDecoration(
          label : RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: hintText,
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
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0x66373C3F),
        ),
        ),
        hintStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Color(0x66373C3F),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 11.h, horizontal: 16.w),
        // You can add more customization like focusedBorder, errorText, etc.
      ),
    );
  }
}
