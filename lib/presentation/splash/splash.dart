import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qit_test/presentation/resources/resources.dart';

import '../../app/app_state_manager.dart';

class SplashView extends ConsumerStatefulWidget {
  const SplashView({super.key});

  @override
  ConsumerState<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends ConsumerState<SplashView> with TickerProviderStateMixin {
  bool _value = true;

  @override
  void initState() {
    super.initState();

    Timer(const Duration(milliseconds: 200), () {
      ref.read(appStateManager).getUserStatus();
      setState(() {
        _value = false;
      });
    });

    Timer(const Duration(milliseconds: 1500), () {
      setState(() {
        _value = true;
      });
      Future.delayed(const Duration(seconds: 1)).then((value) {
        if(ref.read(appStateManager).isLoggedIn) {
          Navigator.of(context).pushNamedAndRemoveUntil(
            Routes.homeRoute, (route) => false,);
        } else{
           Navigator.of(context).pushNamedAndRemoveUntil(Routes.registerRoute,(route) => false,);
         }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: AnimatedContainer(
          curve: Curves.slowMiddle,
          duration: const Duration(seconds: 1,milliseconds: 500),
          height: _value ? 65.sp : 265.sp,
          width: _value ? 65.sp : 265.sp,
          child:  SvgPicture.asset('assets/images/logo.svg'),
        ),
      ),
    );
  }
}