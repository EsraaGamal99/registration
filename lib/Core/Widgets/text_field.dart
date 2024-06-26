import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Theming/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final TextAlign textAlign;
  final double? width;
  final double? height;
  final String? hintText;
  final String? mainHintText;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool? readOnly;
  final String? labelText;
  final int? maxLines;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? errorText;
  final Color? fillColor;
  final bool addStar;
  final void Function()? onTap;

  const CustomTextField(
      {super.key,
        this.maxLines,
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
        this.labelText,
        this.obscureText = false,
        this.suffixIcon,
        this.prefixIcon,
        this.errorText,
        this.fillColor,
        this.onTap, this.mainHintText, this.addStar= true});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AbsorbPointer(
        child: Container(
          height: height,
          child: TextFormField(
            maxLines: maxLines,
            readOnly: readOnly ?? false,
            obscureText: obscureText,
            textInputAction: TextInputAction.next,
            validator: validator,
            controller: controller,
            onFieldSubmitted: onFieldSubmitted,
            onChanged: onChanged,
            keyboardType: keyboardType,
            inputFormatters: inputFormatters,
            cursorHeight: 20.h,
            decoration: InputDecoration(
              errorText: errorText,
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
              isDense: true,
              hintText: mainHintText,
              labelText: labelText,
              alignLabelWithHint: true,
              label: addStar?RichText(
                text:  TextSpan(
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
              ):Text(hintText!, style:  TextStyle(
                color: Color(0x66373C3F),
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),),
              hintStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0x66373C3F),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 11.h, horizontal: 16.w),
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0x66373C3F),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0x66373C3F),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: kPrimaryColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
