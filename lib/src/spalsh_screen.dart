import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterappui/src/routes/screen_routes.dart';
import 'package:flutterappui/src/utils/size_config.dart';
import 'package:provider/provider.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double iconSize = 0.0;

  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(
          context, ScreenRoute.onboardingScreenRoute);
    });

    //  print("uid: ${FirebaseAuth.instance.currentUser!.uid}");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var height = SizeConfig.screenHeight;
    var width = SizeConfig.screenWidth;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            "assets/logo.png",
            height: height! * 0.1,
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "SOME ",
                style: TextStyle(
                    color: Color(0xFF044dba),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "APP",
                style: TextStyle(
                    color: Color(0xFF0a8add),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.06,
          ),
          RotatedBox(
            quarterTurns: 2,
            child: ClipPath(
              clipper: DiagonalPathClipperTwo(),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: const [
                      0,
                      0.8
                    ],
                        colors: [
                      const Color(0xFF044dba).withOpacity(0.9),
                      const Color(0xFF0a8add),
                    ])),
                width: width,
                height: height * 0.55,
                // child: Center(
                //   child: AnimatedContainer(
                //     duration: const Duration(seconds: 1),
                //     width: height * iconSize,
                //     height: height * iconSize,
                //     child: Image.asset(
                //       "assets/images/splash_icon.png",
                //       //  fit: BoxFit.cover,
                //     ),
                //   ),
                // ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
