// Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

// Project imports:
import 'package:sovchilar/config/values/strings_constants.dart';

/*========================Email Validator==============================================*/
class Validator {
  static String? validateEmail(String? value) {
    if (value?.isEmpty ?? true) {
      return 'strEmailEmpty'.tr();
    } else if (!EmailValidator.validate(value!)) {
      return 'strInvalidEmail'.tr();
    }
    return null;
  }

  bool validateStrongPassword(value) {
    var pattern =
        '^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@\$%^&*-]).{6,}\$';
    RegExp regex = RegExp(pattern);
    return (regex.hasMatch(value)) ? false : true;
  }

  static String? validateConfirmPasswordMatch(
      {String? value, String? password}) {
    if (value!.isEmpty) {
      return 'strCPasswordEmpty'.tr();
    } else if (value.length < 4) {
      return 'strInvalidPassword'.tr();
    } else if (value != password) {
      return 'strPasswordMatc'.tr();
    }
    return null;
  }

  static String? fieldChecker({required String value, required message}) {
    if (value.toString().trim().isEmpty) {
      return "$message ${'strCannotBeEmpty'.tr}";
    }
    return null;
  }
}

/*================================================== Password Validator ===================================================*/

class PasswordFormValidator {
  static String? validate(String value) {
    if (value.isEmpty) {
      return 'strPasswordEmpty'.tr();
    } else if (value.length < 6) {
      return 'strInvalidPassword'.tr();
    }
    return null;
  }

  static String? validateStrongPassword(String? value) {
    if (value.toString().isEmpty) {
      return MyStrings.requiredField;
    } else if (Validator().validateStrongPassword(value.toString())) {
      return MyStrings.strongPassword;
    }
    return null;
  }

  static String? validatePasswordMatch(
      {String? value, String? confirmPassword}) {
    if (value!.isEmpty) {
      return 'strCPasswordEmpty'.tr();
    } else if (value.length < 5) {
      return 'strInvalidPassword'.tr();
    } else if (value != confirmPassword) {
      return 'strPasswordMatc'.tr();
    }
    return null;
  }
}

/*================================================== Phone Number Validator ===================================================*/

class PhoneNumberValidate {
  static String? validateMobile(String? value) {
    if (value?.isEmpty ?? true) {
      return MyStrings.requiredField;
    } else if (!isPhoneValid(value ?? '')) {
      return MyStrings.invalidFormat;
    }
    return null;
  }
}

bool validateNumber(String value) {
  var pattern = r'^[0-9]+$';
  RegExp regex = RegExp(pattern);
  return (!regex.hasMatch(value)) ? false : true;
}

/*===============================Field Checker=================================================*/

class FieldChecker {
  static String? fieldChecker(String? value, message) {
    if (value == null || value.toString().trim().isEmpty) {
      return "$message ${'strCannotBeEmpty'.tr}";
    }
    return null;
  }
}
