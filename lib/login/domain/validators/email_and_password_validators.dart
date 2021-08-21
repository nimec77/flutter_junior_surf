import 'package:flutter_junior_surf/login/domain/constants.dart';
import 'package:flutter_junior_surf/login/domain/validators/email_validator.dart';
import 'package:flutter_junior_surf/login/domain/validators/length_string_validator.dart';

class EmailAndPasswordValidators {
  final emailValidator = EmailValidator();
  final passwordValidator = LengthStringValidator(kMinPasswordLength);
}