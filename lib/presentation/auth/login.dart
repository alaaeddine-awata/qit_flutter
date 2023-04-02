import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../app/app_state_manager.dart';
import '../../app/dependency_injection.dart';
import '../resources/resources.dart';
import 'providers/login_provider.dart';

class LoginView extends ConsumerStatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  ConsumerState<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends ConsumerState<LoginView> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool visibility = false;

  void login() {
    if (email.text.isNotEmpty && password.text.isNotEmpty) {
      ref.read(loginProvider.notifier).signIn(email.text, password.text);
    } else {
      Fluttertoast.showToast(msg: AppStrings().pleaseFillOutAllFields);
    }
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(loginProvider, (previous, next){
      if (ref.watch(loginProvider).status == LoginStatus.success) {
        ref.read(appStateManager).login(ref.read(loginProvider).authModel?.token??'');
        resetAllModules();
        Navigator.of(context).pushNamedAndRemoveUntil(Routes.homeRoute,(route) => false,);
        Fluttertoast.showToast(msg: AppStrings().loggedInSuccessfully,backgroundColor: Colors.green);
      }
      if (ref.watch(loginProvider).status == LoginStatus.error) {
        Fluttertoast.showToast(msg: ref.watch(loginProvider).errorMessage ?? AppStrings().somethingWentWrong,backgroundColor: Colors.red);
      }
    });
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              bottom: 40.h,
              right: 140.w,
              child: CircleAvatar(
                radius: 60.h,
                backgroundColor: ColorManager.secondary3.withAlpha(20),
              ),
            ),
            Positioned(
              top: 100.h,
              left: 32.w,
              child: CircleAvatar(
                radius: 75.h,
                backgroundColor: ColorManager.secondary2.withAlpha(20),
              ),
            ),
            Positioned(
              top: 400.h,
              right: 150.w,
              child: CircleAvatar(
                radius: 45.h,
                backgroundColor: ColorManager.secondary4.withAlpha(20),
              ),
            ),
            Positioned.fill(
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 46.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      child: Row(
                        children: [
                          BackButton(
                            color: ColorManager.primary,
                          ),
                          const Spacer(),
                          Center(
                              child: Text(
                            AppStrings().login,
                            style: Theme.of(context).textTheme.displayLarge,
                          )),
                          const Spacer(
                            flex: 2,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 50.h),
                        decoration: BoxDecoration(
                          color: ColorManager.lightGreyWithO,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.r),
                            topRight: Radius.circular(30.r),
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    AppStrings().helloAgain,
                                    style: Theme.of(context).textTheme.displayLarge,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 37.h,
                              ),
                              TextFormField(
                                controller: email,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    prefixIcon: const Icon(Icons.email),
                                    hintText: AppStrings().email),
                              ),
                              SizedBox(
                                height: 35.h,
                              ),
                              TextFormField(
                                controller: password,
                                obscureText: !visibility,
                                decoration: InputDecoration(
                                    prefixIcon: InkWell(
                                        onTap: () {
                                          setState(() {
                                            visibility = !visibility;
                                          });
                                        },
                                        child: Icon(visibility
                                            ? Icons.visibility
                                            : Icons.visibility_off)),
                                    hintText: AppStrings().password),
                              ),
                              SizedBox(
                                height: 35.h,
                              ),
                              SizedBox(
                                height: 77.h,
                              ),
                              ref.watch(loginProvider).status == LoginStatus.loading
                                  ? const Center(
                                      child: CircularProgressIndicator(),
                                    )
                                  : ElevatedButton(
                                      onPressed: login,
                                      child: Text(AppStrings().login),
                                    ),
                              SizedBox(
                                height: 42.h,
                              ),
                              Center(
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: AppStrings().dontHaveAnAccount,
                                        style: Theme.of(context).textTheme.bodySmall,
                                      ),
                                      TextSpan(
                                        text: ' ${AppStrings().signUp}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(color: ColorManager.primary),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Navigator.pop(context);
                                          },
                                      ),
                                    ],
                                  ),
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
