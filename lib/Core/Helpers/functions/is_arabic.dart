import 'package:flutter/material.dart';

bool isArabic(BuildContext context) {
  // Get the locale of the app
  Locale locale = Localizations.localeOf(context);
  
  // Check if the language code is Arabic
  return locale.languageCode == 'ar';
}