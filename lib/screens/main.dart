import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quatoes_app/screens/splash.dart';
import 'homeScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const SplashScreen(),
      'home':(context) => const HomeScreen(),
    },
  ));
}
