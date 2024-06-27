// Regular expressions for email and phone number validation
final RegExp emailFormat = RegExp(
  r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
  caseSensitive: false,
  multiLine: false,
);

//(r'^(011|012|010|015)\d{8}$')
final RegExp phoneFormat = RegExp(
  r'^(011|012|010|015)\d{8}$',
  caseSensitive: false,
  multiLine: false,
);

final RegExp endsWithDotCom = RegExp(
  r"\.com$",
  caseSensitive: false,
  multiLine: false,
);

final RegExp lettersFormat = RegExp(
  r'[a-zA-Z\u0600-\u06FF]',
  caseSensitive: false,
  multiLine: false,
);