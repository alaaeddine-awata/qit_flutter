import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qit_test/app/dependency_injection.dart';
import 'package:qit_test/data/model/responses/responses.dart';
import '../../../domain/repository/repository.dart';

final loginProvider = StateNotifierProvider<LoginNotifier, LoginState>((ref) {
  return LoginNotifier();
});

enum LoginStatus { initial, loading, success, error }

class LoginState {
  final LoginStatus status;
  final String? errorMessage;
  final AuthModel? authModel;

  LoginState({required this.status, this.errorMessage, this.authModel});
}

class LoginNotifier extends StateNotifier<LoginState> {
  final Repository repository = instance<Repository>();

  LoginNotifier() : super(LoginState(status: LoginStatus.initial));

  Future<void> signIn(String email, String password) async {
    state = LoginState(status: LoginStatus.loading);

    (await repository.login(email: email, password: password)).fold(
        (failure) => state = LoginState(
              status: LoginStatus.error,
              errorMessage: failure.message,
            ),
        (data) => state = LoginState(status: LoginStatus.success,authModel: data));
  }

}
