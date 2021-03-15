import 'package:airbnb/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreens extends StatefulWidget {
  @override
  _SplashScreensState createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 5,
        navigateAfterSeconds: MainScreen(),
        title: Text(
          'Welcome In SplashScreen',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        image: Image.asset("assets/images/splashimage.jpg"),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: TextStyle(),
        photoSize: 100.0,
        onClick: () => print("Flutter Egypt"),
        loaderColor: Colors.red);
  }
}
