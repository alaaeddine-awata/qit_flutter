import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qit_test/app/app_preferences.dart';
import 'package:qit_test/app/dependency_injection.dart';

import '../domain/repository/repository.dart';

final appStateManager = Provider((ref) {
  return AppStateManagerController();
});

class AppStateManagerController{
  final AppPreferences _appPreferences = instance<AppPreferences>();
   bool _loggedIn = false;

  bool get isLoggedIn => _loggedIn;

  void getUserStatus() async {
   _loggedIn = await _appPreferences.isUserLoggedIn();
  }

  void login(String token){
    _loggedIn = true;
    _appPreferences.setIsUserLoggedIn();
    _appPreferences.setUserToken(token);
    _appPreferences.setUserTokenType('Bearer');
  }

  Future<void> logout(bool all) async {
    _loggedIn =false;
    _appPreferences.logout();
    (await instance<Repository>().logout(all: all)).fold(
    (failure) => null,
    (data) => null);
   await resetAllModules();
  }

}