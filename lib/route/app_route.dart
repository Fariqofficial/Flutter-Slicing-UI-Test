import 'package:flutter/material.dart';
import 'package:slicing_ui_test/features/dashboard/dashboard_screen.dart';
import 'package:slicing_ui_test/features/education/education_screen.dart';
import 'package:slicing_ui_test/features/login/login_screen.dart';

class AppRoute {
  static const String main = "/";
  static const String login = "/login";
  static const String dashboard = "/dashboard";

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case main:
        return MaterialPageRoute(
          builder: (context) {
            return EducationScreen();
          },
        );
      case login:
        return MaterialPageRoute(
          builder: (context) {
            return LoginScreen();
          },
        );
      case dashboard:
        return MaterialPageRoute(
          builder: (context) {
            return DashboardScreen();
          },
        );
      default:
        return _notFoundPage;
    }
  }

  static MaterialPageRoute get _notFoundPage => MaterialPageRoute(
    builder: (context) => Scaffold(body: Center(child: Text("Page Not Found"))),
  );
}
