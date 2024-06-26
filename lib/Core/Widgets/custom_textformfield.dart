import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
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

  const CustomTextFormField({
    super.key,
    this.keyboardType,
    this.inputFormatters,
    this.height,
    this.width,
    this.hintText,
    this.textAlign = TextAlign.start,
    this.onChanged,
    this.onFieldSubmitted,
    this.controller,
    this.validator,
    this.readOnly,
    this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly ?? false,
      textInputAction: TextInputAction.done,
      validator: validator,
      controller: controller,
      onFieldSubmitted: onFieldSubmitted,
      onChanged: onChanged,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      cursorHeight: 20.h,
      decoration: InputDecoration(
        isDense: true,
        hintText: hintText,
        labelText: labelText,
        hintStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color(0x66373C3F),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 11.h, horizontal: 16.w),
        filled: true,
        //fillColor: Colors.grey,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.r),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.r),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.r),
          borderSide: const BorderSide(color: Colors.grey, width: 2),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.r),
          borderSide: const BorderSide(color: Colors.grey, width: 2),
        ),
      ),
    );
  }
}
