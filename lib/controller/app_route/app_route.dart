import 'package:flutter/material.dart';

import '../../view/auth/pages/login_page.dart';
import '../../view/auth/pages/signup_page.dart';

class AppRoute {
  static Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case LoginPage.routeName:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case SignUpPage.routeName:
        return MaterialPageRoute(builder: (_) => const SignUpPage());
      default:
        return null;
    }
  }
}
