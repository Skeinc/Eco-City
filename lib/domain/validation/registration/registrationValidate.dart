import 'package:eco_city/utils/helpers/parsePhoneNumber.dart';

class RegistrationValidate {
  static String? validatePhone(String value, bool button) {
    value = parsePhoneNumber(value);

    if (button) {
      if (value.isEmpty) {
        return 'Заполните поле';
      } else {
        if (value.length < 11) {
          return 'Неверный формат номера';
        } else if (value.length > 11) {
          return 'Неверный формат номера';
        } else if (value[0] != '7') {
          return 'Неверный код страны';
        }
      }
    }

    return null;
  }

  static String? validateCode(String value, bool button) {
    if (button) {
      if (value.isEmpty) {
        return 'Заполните поле';
      } else {
        if (value.length < 4) {
          return 'Неверная длина кода';
        } else if (value.length > 4) {
          return 'Неверная длина кода';
        } else if (value.length != 4 || !RegExp(r'^[0-9]+$').hasMatch(value)) {
          return 'Неверный формат кода';
        }
      }
    }

    return null;
  }
}
