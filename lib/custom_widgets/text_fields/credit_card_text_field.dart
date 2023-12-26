// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

// Project imports:
import 'package:sovchilar/config/enums/card_type_enum.dart';
import 'package:sovchilar/config/values/strings_constants.dart';
import 'default_text_field.dart';

class CreditCardTextField extends StatefulWidget {
  //
  final String? labelText;
  final String? initialValue;

  final TextEditingController controller;

  final FocusNode? focusNode;
  final int maxLines;

  final bool enabled;
  final bool autofocus;
  final bool isRequired;

  const CreditCardTextField({
    super.key,
    required this.controller,
    this.labelText,
    this.initialValue,
    //
    this.focusNode,
    this.maxLines = 1,
    //
    this.enabled = true,
    this.autofocus = false,
    this.isRequired = true,
  });

  @override
  State<CreditCardTextField> createState() => _CreditCardTextFieldState();
}

class _CreditCardTextFieldState extends State<CreditCardTextField> {
  //
  CardType cardType = CardType.unknown;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_updateCardType);
  }

  void updateState() => {if (mounted) setState(() {})};

  @override
  Widget build(BuildContext context) {
    return MyTextField(
      canClear: true,
      enabled: widget.enabled,
      maxLines: widget.maxLines,
      autoFocus: widget.autofocus,
      focusNode: widget.focusNode,
      controller: widget.controller,
      isRequired: widget.isRequired,
      prefixIcon: prefixIcon,
      initialValue: widget.initialValue,
      keyboardType: TextInputType.number,
      labelText: widget.labelText ?? MyStrings.cardNumber,
      inputFormatters: [CreditCardNumberInputFormatter()],
    );
  }

  Widget? get prefixIcon {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Image.asset(
        cardType.image,
        width: 24,
        height: 24,
      ),
    );
  }

  void _updateCardType() {
    if (widget.controller.text.contains('8600') ||
        widget.controller.text.contains('5614')) {
      cardType = CardType.uzcard;
    } else if (widget.controller.text.contains('9860')) {
      cardType = CardType.humo;
    } else {
      cardType = CardType.unknown;
    }
    updateState();
  }

  @override
  void dispose() {
    widget.controller.removeListener(_updateCardType);
    super.dispose();
  }
}
