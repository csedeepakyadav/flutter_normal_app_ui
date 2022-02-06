import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterappui/src/routes/screen_routes.dart';
import 'package:flutterappui/src/utils/size_config.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var height = SizeConfig.screenHeight;
    var width = SizeConfig.screenWidth;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: width! * 0.05),
            height: height,
            width: width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: height! * 0.18,
                ),
                Image.asset(
                  "assets/logo.png",
                  height: height * 0.14,
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                const Text(
                  "Getting started is easy!",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                const Text(
                  "Create your username setup profile and you're in.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF5a5d65),
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: height * 0.06,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, ScreenRoute.signupScreenRoute);
                  },
                  child: Container(
                    width: width,
                    padding:
                        const EdgeInsets.symmetric(vertical: 18, horizontal: 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: const Color(0xFF0065ff)),
                    ),
                    child: Text(
                      "Signup as user".toUpperCase(),
                      style: const TextStyle(
                          letterSpacing: 1.2,
                          color: Color(0xFF0065ff),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, ScreenRoute.signupScreenRoute);
                  },
                  child: Container(
                    width: width,
                    padding:
                        const EdgeInsets.symmetric(vertical: 19, horizontal: 0),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [Color(0xFF149dff), Color(0xFF0066ff)]),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Signup as admin".toUpperCase(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                          fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: height * 0.07),
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.pushNamed(
                      //     context, ScreenRoute.createProfileScreenRoute);

                      // Navigator.pushNamed(
                      //     context, ScreenRoute.selectdaytimeScreenRoute);

                      Navigator.pushNamed(
                          context, ScreenRoute.selectCategoriesScreen);
                    },
                    child: Text(
                      "login".toUpperCase(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color(0xFF006fcd),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
