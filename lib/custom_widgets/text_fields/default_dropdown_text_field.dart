// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:sovchilar/config/values/color_constants.dart';
import 'package:sovchilar/config/values/strings_constants.dart';

class MyDropdownTextField extends StatefulWidget {
  //
  final List<DropdownMenuItem<String>> items;

  final String? initialValue;
  final String? hintText;
  final String? labelText;
  final String? errorText;

  final TextStyle textStyle;
  final TextStyle? labelTextStyle;
  final TextStyle? hintTextStyle;
  final TextStyle? errorTextStyle;

  final Widget? prefixIcon;
  final Widget? suffixIcon;

  final VoidCallback? onTap;
  final void Function(String?)? onChanged;
  final String? Function(String?)? validator;

  final bool enabled;
  final bool? autoFocus;
  final bool isRequired;

  final FocusNode? focusNode;

  final BoxConstraints? prefixIconConstraints;
  final BoxConstraints? suffixIconConstraints;

  final EdgeInsets contentPadding;

  const MyDropdownTextField({
    super.key,
    //
    required this.items,
    required this.onChanged,
    //
    this.initialValue,
    this.hintText,
    this.labelText,
    this.errorText,
    //
    this.textStyle = const TextStyle(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    this.labelTextStyle = const TextStyle(
      color: MyColors.greyVarient,
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
    this.hintTextStyle = const TextStyle(
      color: MyColors.grey,
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
    this.errorTextStyle = const TextStyle(
      color: Colors.red,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    //
    this.onTap,
    this.validator,
    //
    this.enabled = true,
    this.autoFocus = false,
    this.isRequired = false,
    //
    this.prefixIcon,
    this.suffixIcon,
    this.prefixIconConstraints = const BoxConstraints(
      minWidth: 40,
      minHeight: 40,
    ),
    this.suffixIconConstraints = const BoxConstraints(
      minWidth: 40,
      minHeight: 40,
    ),
    this.contentPadding = const EdgeInsets.symmetric(
      horizontal: 16,
    ),
    //
    this.focusNode,
  });

  @override
  State<MyDropdownTextField> createState() => _MyDropdownTextFieldState();
}

class _MyDropdownTextFieldState extends State<MyDropdownTextField> {
  //
  late FocusNode focusNode;

  @override
  void initState() {
    focusNode = widget.focusNode ?? FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      menuMaxHeight: 300,
      items: widget.items,
      onTap: widget.onTap,
      style: widget.textStyle,
      value: widget.initialValue,
      onChanged: (value) => widget.onChanged!(value),
      decoration: inputDecoration,
      icon: Icon(
        Icons.arrow_drop_down_rounded,
        color: Theme.of(context).colorScheme.background,
      ),
      validator: widget.validator ??
          (String? value) {
            if (value == null || value.isEmpty && widget.isRequired) {
              return MyStrings.requiredField;
            }
            return null;
          },
      focusNode: focusNode,
      dropdownColor: Colors.white,
      autofocus: widget.autoFocus ?? false,
      borderRadius: BorderRadius.circular(8),
    );
  }

  InputDecoration get inputDecoration => InputDecoration(
        filled: !widget.enabled,
        label: Text.rich(TextSpan(
          text: widget.labelText ?? '',
          children: [
            if (widget.isRequired) ...[
              const TextSpan(
                text: ' *',
                style: TextStyle(color: Colors.red),
              ),
            ],
          ],
          style: widget.labelTextStyle,
        )),
        //
        hintText: widget.hintText,
        hintStyle: widget.hintTextStyle,
        //
        errorText: widget.errorText,
        errorStyle: widget.errorTextStyle,
        //
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.suffixIcon,
        prefixIconConstraints: widget.prefixIconConstraints,
        suffixIconConstraints: widget.suffixIconConstraints,
        //
        contentPadding: widget.contentPadding,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        //
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.background,
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.background,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      );
}
