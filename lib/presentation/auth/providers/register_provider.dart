import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qit_test/app/dependency_injection.dart';
import 'package:qit_test/data/model/responses/responses.dart';
import '../../../domain/repository/repository.dart';

final registerProvider = StateNotifierProvider<RegisterNotifier, RegisterState>((ref) {
  return RegisterNotifier();
});

enum RegisterStatus { initial, loading, success, error }

class RegisterState {
  final RegisterStatus status;
  final String? errorMessage;
  final AuthModel? authModel;

  RegisterState({required this.status, this.errorMessage, this.authModel});
}

class RegisterNotifier extends StateNotifier<RegisterState> {
  final Repository repository = instance<Repository>();

  RegisterNotifier() : super(RegisterState(status: RegisterStatus.initial));


  Future<void> signUp(String email, String name, String password, String passwordConfirmation) async {
    state = RegisterState(status: RegisterStatus.loading);

    (await repository.register(email: email, name: name, password: password, passwordConfirmation: passwordConfirmation)).fold(
            (failure) => state = RegisterState(
          status: RegisterStatus.error,
          errorMessage: failure.message,
        ),
            (data) => state = RegisterState(status: RegisterStatus.success,authModel: data));
  }
}
