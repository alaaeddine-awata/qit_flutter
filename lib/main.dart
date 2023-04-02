import 'package:easy_localization/easy_localization.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qit_test/app/app_state_manager.dart';
import 'package:qit_test/presentation/resources/routes_manager.dart';
import 'app/app.dart';
import 'app/dependency_injection.dart';
import 'presentation/resources/language_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  AppRouter.setupRouter();
  await initAppModule();
  runApp(
    ProviderScope(
      child: EasyLocalization(
        supportedLocales: const [ARABIC_LOCAL, ENGLISH_LOCAL],
        path: ASSETS_PATH_LOCALISATION,
        child: MyApp(),
      ),
    ),
  );
}
