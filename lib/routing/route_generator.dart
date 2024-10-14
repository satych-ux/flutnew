import 'package:flutnew/presentation/views/auth/forget_password_page_view.dart';
import 'package:flutnew/presentation/views/auth/login_page_view.dart';
import 'package:flutnew/presentation/views/auth/signup_page_view.dart';
import 'package:flutnew/presentation/views/landing/landing_page_view.dart';
import 'package:flutnew/utils/constants/named_routes.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  RouteGenerator();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    switch (settings.name) {
      case NamedRoutes.landingPageRoute:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const LandingPageView(),
        );
      case NamedRoutes.loginRoute:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LoginPageView(),
        );
      case NamedRoutes.signupRoute:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => SignupPageView(),
        );
      case NamedRoutes.forgotPasswordRoute:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => ForgetPasswordPageView(),
        );

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Error'),
            backgroundColor: Theme.of(_).scaffoldBackgroundColor,
          ),
          body: const Center(
            child: Text('Somethig went wrong!'),
          ),
        );
      },
    );
  }
}
