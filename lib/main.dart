import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterappui/src/constants/constants.dart';
import 'package:flutterappui/src/providers/connectivity_provider.dart';
import 'package:flutterappui/src/routes/route_generator.dart';
import 'package:flutterappui/src/routes/screen_routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await Firebase.initializeApp();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ConnectivityProvider>(
            create: (_) => ConnectivityProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: kActiveColor,
          scaffoldBackgroundColor: Colors.white,
          textTheme: GoogleFonts.montserratTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        initialRoute: ScreenRoute.splashScreenRoute,
        onGenerateRoute: RouteGenerator.generateRoutes,
      ),
    );
  }
}
