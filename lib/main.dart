import 'package:blog_app/screens/home.dart';
import 'package:blog_app/screens/onboarding-screens/first-onboarding.dart';
import 'package:blog_app/screens/options.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? initScreen;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences pref = await SharedPreferences.getInstance();
  initScreen = await pref.getInt("initScreen");

  await pref.setInt("initScreen", 1);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes: {
      //   "/onboarding": (context) => FirstScreen(),
      //   "/": (context) => FirstScreen(),
      // },
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
              body: initScreen == 0 || initScreen == null
                  ? FirstScreen()
                  : FirstScreen())),
    );
  }
}
