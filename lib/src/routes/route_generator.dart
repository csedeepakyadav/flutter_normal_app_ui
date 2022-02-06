import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappui/src/routes/screen_routes.dart';
import 'package:flutterappui/src/spalsh_screen.dart';
import 'package:flutterappui/src/views/auth/createprofile_screen.dart';
import 'package:flutterappui/src/views/auth/select_categories_screen.dart';
import 'package:flutterappui/src/views/auth/select_day_and_time.dart';
import 'package:flutterappui/src/views/auth/signup_screen.dart';
import 'package:flutterappui/src/views/home_screen.dart';
import 'package:flutterappui/src/views/onboarding/onboarding.dart';

class RouteGenerator {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case ScreenRoute.splashScreenRoute:
        return MaterialPageRoute(builder: (context) => const SplashScreen());

      case ScreenRoute.onboardingScreenRoute:
        return MaterialPageRoute(builder: (context) => OnboardingScreen());

      case ScreenRoute.homeScreenRoute:
        return MaterialPageRoute(builder: (context) => HomeScreen());

      case ScreenRoute.signupScreenRoute:
        return MaterialPageRoute(builder: (context) => SignupScreen());

      case ScreenRoute.createProfileScreenRoute:
        return MaterialPageRoute(builder: (context) => CreateProfileScreen());

      case ScreenRoute.selectdaytimeScreenRoute:
        return MaterialPageRoute(builder: (context) => SelectDayandTime());

      case ScreenRoute.selectCategoriesScreen:
        return MaterialPageRoute(builder: (context) => SelectCategoryScreen());

      default:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
    }
  }
}
