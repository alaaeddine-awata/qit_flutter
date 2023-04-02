import 'package:fluro/fluro.dart';
import 'package:qit_test/presentation/auth/login.dart';
import 'package:qit_test/presentation/auth/register.dart';
import 'package:qit_test/presentation/cart/cart.dart';
import 'package:qit_test/presentation/product/product.dart';
import 'package:qit_test/presentation/splash/splash.dart';

import '../../data/model/responses/responses.dart';
import '../home/home.dart';

class Routes {
  static const String splashRoute = '/';
  static const String homeRoute = '/home';
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  static const String cartRoute = '/cart';
  static const String productRoute = '/product';
}

class AppRouter {
  static final router = FluroRouter();

  static void setupRouter() {

    router.define(
        Routes.splashRoute,
        handler: Handler(handlerFunc: (context, params)=>const SplashView())
    );

    router.define(
      Routes.homeRoute,
      handler: Handler(handlerFunc: (context, params)=>const HomeView())
    );

    router.define(
      Routes.loginRoute,
      handler: Handler(
        handlerFunc: (context,params) =>
            const LoginView(),
      ),
    );

    router.define(
      Routes.registerRoute,
      handler: Handler(
        handlerFunc: (context, Map<String, dynamic> params) =>
             const RegisterView(),
      ),
    );

    router.define(
      Routes.cartRoute,
      handler: Handler(
        handlerFunc: (context, Map<String, dynamic> params) =>
        const CartView(),
      ),
    );

    router.define(
      Routes.productRoute,
      handler: Handler(
        handlerFunc: (context, Map<String, dynamic> params) {
          final product = context?.settings?.arguments as ProductModel;
          return ProductView(product: product);
        },
      ),
    );
  }
}