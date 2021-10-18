import 'dart:convert';

import 'package:flutter_junior_surf/login/data/constants.dart';
import 'package:flutter_junior_surf/login/domain/pods/credentials.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CredentialsProvider {
  late final SharedPreferences _sharedPreferences;

  Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<bool> removeCredentials() async {
    return _sharedPreferences.remove(kCredentialsSharedKey);
  }

  Future<bool> saveCredentials(Credentials credentials) async {
    return _sharedPreferences.setString(kCredentialsSharedKey, jsonEncode(credentials));
  }
  
  Credentials loadCredentials() {
    final credentialsJson = _sharedPreferences.getString(kCredentialsSharedKey)!;
    final credentialsMap = jsonDecode(credentialsJson) as Map<String, dynamic>;

    return Credentials.fromJson(credentialsMap);
  }
}