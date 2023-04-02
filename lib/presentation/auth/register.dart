import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:qit_test/presentation/auth/providers/register_provider.dart';
import '../../app/app_state_manager.dart';
import '../../app/dependency_injection.dart';
import '../resources/resources.dart';

class RegisterView extends ConsumerStatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  ConsumerState<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends ConsumerState<RegisterView> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  void register() {
    if (email.text.isNotEmpty && name.text.isNotEmpty && password.text.isNotEmpty) {
      ref.read(registerProvider.notifier).signUp(email.text, name.text, password.text, confirmPassword.text);
    }else if(password.text != confirmPassword.text){
      Fluttertoast.showToast(msg: AppStrings().passwordsDoesNotMatch);
    } else {
      Fluttertoast.showToast(msg: AppStrings().pleaseFillOutAllFields);
    }
  }
  @override
  void dispose() {
    name.dispose();
    password.dispose();
    confirmPassword.dispose();
    email.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(registerProvider, (previous, next) {
      if (ref.watch(registerProvider).status == RegisterStatus.success) {
        ref.read(appStateManager).login(ref.watch(registerProvider).authModel?.token??'');
        resetAllModules();
        Navigator.of(context).pushNamedAndRemoveUntil(Routes.homeRoute,(route) => false,);
        Fluttertoast.showToast(msg: AppStrings().signInSuccessfully,backgroundColor: Colors.green);
      }
      if (ref.watch(registerProvider).status == RegisterStatus.error) {
        Fluttertoast.showToast(msg: ref.watch(registerProvider).errorMessage ?? AppStrings().somethingWentWrong,backgroundColor: Colors.red);
      }
    });
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              bottom: 40.h,
              child: CircleAvatar(
                radius: 60.h,
                backgroundColor: ColorManager.secondary3.withAlpha(20),
              ),
            ),
            Positioned(
              top: 200.h,
              right: 32.w,
              child: CircleAvatar(
                radius: 90.h,
                backgroundColor: ColorManager.secondary2.withAlpha(20),
              ),
            ),
            Positioned(
              top: 15.h,
              left: 40.w,
              child: CircleAvatar(
                radius: 30.h,
                backgroundColor: ColorManager.secondary4.withAlpha(20),
              ),
            ),
            Positioned.fill(
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 46.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      child: Row(
                        children: [
                          const Spacer(),
                          Center(
                              child: Text(
                                AppStrings().signUp,
                                style: Theme.of(context).textTheme.displayLarge,
                              )),
                          const Spacer(
                            flex: 1,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 58.h,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.w, vertical: 57.h),
                        decoration: BoxDecoration(
                          color: ColorManager.lightGreyWithO,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.r),
                            topRight: Radius.circular(30.r),
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              TextFormField(
                                controller: name,
                                decoration: InputDecoration(
                                    hintText: AppStrings().name),
                              ),
                              SizedBox(
                                height: 25.h,
                              ),
                              TextFormField(
                                controller: email,
                                decoration: InputDecoration(
                                    hintText: AppStrings().email),
                              ),
                              SizedBox(
                                height: 25.h,
                              ),
                              TextFormField(
                                controller: password,
                                decoration: InputDecoration(
                                    hintText: AppStrings().password),
                              ),
                              SizedBox(
                                height: 25.h,
                              ),
                              TextFormField(
                                controller: confirmPassword,
                                decoration: InputDecoration(
                                    hintText: AppStrings().confirmPassword),
                              ),
                              SizedBox(
                                height: 64.h,
                              ),
                              ref.watch(registerProvider).status == RegisterStatus.loading
                                  ? const Center(
                                child: CircularProgressIndicator(),
                              )
                                  : ElevatedButton(
                                onPressed: register,
                                child: Text(AppStrings().signUp),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(
                                      height: 45.h,
                                      width: 75.w,
                                      child:
                                      Divider(color: Colors.grey.shade400)),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                                    child: Text(
                                      AppStrings().or,
                                      style: TextStyle(
                                          fontSize: 12, color: ColorManager.grey),
                                    ),
                                  ),
                                  SizedBox(
                                      height: 45.h,
                                      width: 75.w,
                                      child:
                                      Divider(color: Colors.grey.shade400)),
                                ],
                              ),
                              ElevatedButton(
                                onPressed: () {
                                 Navigator.of(context).pushNamedAndRemoveUntil(Routes.homeRoute, (route) => false);
                                },
                                child: Text(AppStrings().exploreTheApp),
                              ),
                              SizedBox(
                                height: 45.h,
                              ),
                              Center(
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text:
                                        AppStrings().alreadyHaveAnAccount,
                                      ),
                                      TextSpan(
                                        text: ' ${AppStrings().login}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(
                                            color: ColorManager.primary),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Navigator.of(context)
                                                .pushNamed(Routes.loginRoute);
                                          },
                                      ),
                                    ],
                                  ),
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
