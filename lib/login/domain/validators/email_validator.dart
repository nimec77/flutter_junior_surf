import 'package:email_validator/email_validator.dart' as email_validator;
import 'package:flutter_junior_surf/login/domain/validators/string_validator.dart';

class EmailValidator implements StringValidator {
  @override
  bool isValid(String? value) {
    return email_validator.EmailValidator.validate(value ?? '');
  }
}
