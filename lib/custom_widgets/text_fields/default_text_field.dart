// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:sovchilar/config/assets/icon_constants.dart';
import 'package:sovchilar/config/values/color_constants.dart';

class MyTextField extends StatefulWidget {
  //
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
  final Function(String value)? onChange;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;

  final bool enabled;
  final bool readOnly;
  final bool? autoFocus;
  final bool? obscureText;
  final bool isRequired;
  final bool canClear;

  final int? minLines;
  final int maxLines;
  final int? maxLength;

  final FocusNode? focusNode;
  final TextAlign textAlign;
  final TextInputType keyboardType;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;

  final BoxConstraints? prefixIconConstraints;
  final BoxConstraints? suffixIconConstraints;

  final EdgeInsets contentPadding;

  const MyTextField({
    super.key,
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
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    //
    this.onTap,
    this.onChange,
    this.controller,
    this.validator,
    //
    this.enabled = true,
    this.readOnly = false,
    this.canClear = false,
    this.autoFocus = false,
    this.isRequired = false,
    this.obscureText = false,
    //
    this.minLines = 1,
    this.maxLines = 1,
    this.maxLength,
    //
    this.inputFormatters,
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
    this.textInputAction,
    this.textAlign = TextAlign.start,
    this.keyboardType = TextInputType.text,
    this.textCapitalization = TextCapitalization.none,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  //
  late FocusNode focusNode;
  late TextEditingController controller;

  bool get showClear =>
      widget.canClear && focusNode.hasFocus && controller.text.isNotEmpty;

  @override
  void initState() {
    focusNode = widget.focusNode ?? FocusNode();
    controller = widget.controller ?? TextEditingController();

    controller.text = widget.initialValue ?? '';

    if (widget.canClear) {
      controller.addListener(updateState);
      focusNode.addListener(updateState);
    }
    super.initState();
  }

  void updateState() => {if (mounted) setState(() {})};

  @override
  void dispose() {
    if (widget.canClear) {
      controller.removeListener(updateState);
      focusNode.removeListener(updateState);
    }
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextFormField(
          validator: widget.validator,
          controller: controller,
          onTap: widget.onTap,
          onChanged: widget.onChange,
          //
          style: widget.textStyle,
          //
          focusNode: focusNode,
          textAlign: widget.textAlign,
          //
          maxLength: widget.maxLength,
          maxLines: widget.maxLines,
          minLines: widget.minLines,
          autofocus: widget.autoFocus ?? false,
          //
          enabled: widget.enabled,
          readOnly: widget.readOnly,
          obscureText: widget.obscureText ?? false,
          //
          inputFormatters: widget.inputFormatters,
          textCapitalization: widget.textCapitalization,
          //
          keyboardType: widget.keyboardType,
          textInputAction: widget.textInputAction,
          //
          cursorColor: Colors.black,
          decoration: inputDecoration,
        ),
        if (showClear && widget.maxLines >= 1)
          Positioned(
            top: 6,
            right: 4,
            child: clearButton(),
          ),
      ],
    );
  }

  Widget clearButton() {
    return GestureDetector(
      onTap: onClear,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: SvgPicture.asset(
          MyIcons.closeRounded,
          width: 20,
          height: 20,
        ),
      ),
    );
  }

  void onClear() {
    controller.clear();
    widget.onChange?.call('');
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
