import 'package:flutter/material.dart';
import 'package:mvvm/utils/routes/routes_name.dart';
import 'package:mvvm/view/home-screen.dart';
import 'package:mvvm/view/login_view.dart';
import 'package:mvvm/view/signup_view.dart';
import 'package:mvvm/view/splash_view.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(builder: (context) => const SplashView());
      case RoutesName.home:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case RoutesName.login:
        return MaterialPageRoute(builder: (context) => const LoginView());
      case RoutesName.signUp:
        return MaterialPageRoute(builder: (context) => const SignUpView());

      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(child: Text("no route defined")),
          );
        });
    }
  }
}
