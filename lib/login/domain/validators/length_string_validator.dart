import 'package:flutter_junior_surf/login/domain/constants.dart';
import 'package:flutter_junior_surf/login/domain/validators/string_validator.dart';

class LengthStringValidator implements StringValidator {
  LengthStringValidator(this.minLength);

  final int minLength;

  @override
  bool isValid(String? value) {
    final length = value?.length ?? 0;

    return length >= minLength && length <= kMaxStringLength;
  }
}
