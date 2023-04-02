import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../presentation/resources/language_manager.dart';

const String PREFS_KEY_LANG = 'PREFS_KEY_LANG';
const String PREFS_KEY_ON_BOARDING_SCREEN = 'PREFS_KEY_ON_BOARDING_SCREEN';
const String PREFS_KEY_IS_USER_LOGGED_IN = 'PREFS_KEY_IS_USER_LOGGED_IN';
const String PREFS_KEY_IS_COMMERCIAL_PROFILE = 'PREFS_KEY_IS_COMMERCIAL_PROFILE';
const String PREFS_KEY_COMMERCIAL_PROFILE_TYPE = 'PREFS_KEY_COMMERCIAL_PROFILE_TYPE';
const String PREFS_KEY_ITS_FIRST_TIME = 'PREFS_KEY_ITS_FIRST_TIME';
const String PREFS_KEY_IS_USER_SKIPPED = 'PREFS_KEY_IS_USER_SKIPPED';
const String PREFS_KEY_TOKEN = 'PREFS_KEY_TOKEN';
const String PREFS_KEY_TOKEN_TYPE = 'PREFS_KEY_TOKEN_TYPE';
const String DARK_MODE = 'DARK_MODE';
const DEEP_LINK = '1';

class AppPreferences {
  final SharedPreferences _sharedPreferences;

  AppPreferences(this._sharedPreferences);

  Future<String> getAppLanguage() async {
    String? language = _sharedPreferences.getString(PREFS_KEY_LANG);
    if (language != null && language.isNotEmpty) {
      return language;
    } else {
      return LanguageType.ENGLISH.getValue();
    }
  }

  Future<void> setAppLanguage({required String lang}) async {
    String currentLanguage = await getAppLanguage();
    if (lang == currentLanguage) {} else {
      _sharedPreferences.setString(PREFS_KEY_LANG, lang);
    }
  }

  Future<Locale> getLocal() async {
    String currentLanguage = await getAppLanguage();
    if (currentLanguage == LanguageType.ARABIC.getValue()) {
      return ARABIC_LOCAL;
    } else {
      return ENGLISH_LOCAL;
    }
  }

  Future<void> setUserToken(String token) async {
    _sharedPreferences.setString(PREFS_KEY_TOKEN, token);
  }

  Future<String> getUserToken() async {
    return _sharedPreferences.getString(PREFS_KEY_TOKEN) ?? '';
  }

  Future<void> setUserTokenType(String token) async {
    _sharedPreferences.setString(PREFS_KEY_TOKEN_TYPE, token);
  }

  Future<String> getUserTokenType() async {
    return _sharedPreferences.getString(PREFS_KEY_TOKEN_TYPE) ?? '';
  }

  Future<void> setIsUserLoggedIn() async {
    _sharedPreferences.setBool(PREFS_KEY_IS_USER_LOGGED_IN, true);
  }

  Future<bool> isUserLoggedIn() async {
    return _sharedPreferences.getBool(PREFS_KEY_IS_USER_LOGGED_IN) ?? false;
  }

  Future<void> logout() async {
    _sharedPreferences.remove(PREFS_KEY_IS_USER_LOGGED_IN);
    _sharedPreferences.remove(PREFS_KEY_TOKEN);
    _sharedPreferences.remove(PREFS_KEY_TOKEN_TYPE);
  }
}
