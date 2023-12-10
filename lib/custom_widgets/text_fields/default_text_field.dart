// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextField extends StatelessWidget {
  //
  final String? initialValue;
  final String? hintText;
  final String? labelText;
  final String? errorText;

  final Color? labelColor;
  final Color? hintTextColor;
  final Color? textColor;
  final Color? fillColor;
  final Color? preIconColor;

  final IconData? prefixIcon;
  final Widget? suffixIcon;

  final Function(String value)? onChange;
  final FormFieldValidator<String>? validator;

  final TextInputAction? textInputAction;
  final TextEditingController? controller;

  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final TextInputFormatter? textInputFormatter;

  final bool? autoFocus;
  final bool? obscure;

  const MyTextField({
    super.key,
    this.initialValue,
    this.hintText,
    this.labelText,
    this.errorText,
    //
    this.labelColor,
    this.hintTextColor,
    this.textColor,
    this.fillColor,
    this.preIconColor,
    //
    this.prefixIcon,
    this.suffixIcon,
    //
    this.onChange,
    this.validator,
    this.textInputAction,
    this.controller,
    //
    this.focusNode,
    this.keyboardType,
    this.textInputFormatter,
    //
    this.autoFocus,
    this.obscure,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement style and decoration add enabled, autofocus, minLines, maxLines, text capitalization and, can clear

    return TextFormField(
      validator: validator,
      style: Theme.of(context).textTheme.displaySmall?.copyWith(
            color: textColor,
          ),
      onChanged: onChange,
      obscureText: obscure ?? false,
      autofocus: autoFocus ?? false,
      focusNode: focusNode,
      inputFormatters:
          textInputFormatter != null ? [textInputFormatter!] : null,
      initialValue: initialValue,
      controller: controller,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      cursorColor: Theme.of(context).colorScheme.primary,
      decoration: InputDecoration(
        // prefixIcon: Icon(prefixIcon,
        //     size: 22, color: preIconColor ?? AppColors.darkGrey),
        suffixIcon: suffixIcon,
        errorText: errorText,
        hintStyle: Theme.of(context)
            .textTheme
            .displaySmall
            ?.copyWith(color: hintTextColor),
        hintText: hintText,
        filled: true,
        labelText: labelText,
        labelStyle: Theme.of(context)
            .textTheme
            .headlineMedium
            ?.copyWith(color: labelColor, fontSize: 15),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // fillColor: fillColor ?? AppColors.black2,
        contentPadding: const EdgeInsets.fromLTRB(12, 16, 12, 14),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          // borderSide: BorderSide(color: AppColors.black3),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          // borderSide: BorderSide(color: AppColors.black3),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          // borderSide: BorderSide(color: AppColors.black3),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          // borderSide: BorderSide(color: AppColors.primaryColor, width: 1.0),
        ),
        disabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          // borderSide: BorderSide(color: AppColors.black3),
        ),
      ),
    );
  }
}
