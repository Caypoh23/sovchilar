// import 'package:flutter/material.dart';
// import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
// import 'package:sovchilar/config/values/strings_constants.dart';
// import 'package:sovchilar/utils/string_helper.dart';
// import 'package:sovchilar/utils/validator.dart';
// import 'default_text_field.dart';

// class TelegramPhoneTextField extends StatefulWidget {
//   final String? labelText;
//   final String? initialValue;
//   final TextEditingController controller;
//   final bool enabled;
//   final bool autoFocus;
//   final bool isRequired;

//   const TelegramPhoneTextField({
//     super.key,
//     required this.controller,
//     this.labelText,
//     this.initialValue,
//     this.enabled = true,
//     this.autoFocus = false,
//     this.isRequired = true,
//   });

//   @override
//   _TelegramPhoneTextFieldState createState() => _TelegramPhoneTextFieldState();
// }

// class _TelegramPhoneTextFieldState extends State<TelegramPhoneTextField> {
//   bool isPhone = false;

//   @override
//   void initState() {
//     super.initState();
//     widget.controller.addListener(updateValidation);
//     updateValidation();
//   }

//   void updateValidation() {
//     setState(() {
//       isPhone = isInputPhone(widget.controller.text);
//     });
//   }

//   bool isInputPhone(String text) {
//     // Check if it starts with '@' to determine if it's a Telegram username
//     if (text.startsWith('@')) {
//       return false;
//     }

//     // Check if it's a valid phone number format
//     return text.contains(RegExp(r'^\+\d{1,3}\s?\(\d{1,3}\)\s?\d{1,10}$'));
//   }

//   @override
//   Widget build(BuildContext context) {
//     final phoneMask = PhoneInputFormatter();
//     final telegramMask = MyStringHelper.telegramFormatter();
//     final inputFormatters = isPhone ? [phoneMask] : [telegramMask];

//     return MyTextField(
//       enabled: widget.enabled,
//       autoFocus: widget.autoFocus,
//       canClear: true,
//       controller: widget.controller,
//       inputFormatters: inputFormatters,
//       keyboardType: TextInputType.text,
//       initialValue: isPhone
//           ? MyStringHelper.phoneMask(widget.initialValue)
//           : MyStringHelper.telegramMask(widget.initialValue),
//       labelText: '${MyStrings.yourTelegram}/${MyStrings.phoneNumber}',
//       validator: (value) =>
//           isPhone ? PhoneNumberValidate.validateMobile(value) : null,
//     );
//   }

//   @override
//   void dispose() {
//     widget.controller.removeListener(updateValidation);
//     super.dispose();
//   }
// }
