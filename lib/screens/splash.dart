import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quatoes_app/screens/homeScreen.dart';
import 'package:stickereditor/stickereditor.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String img =
      "https://www.pexels.com/photo/back-view-photo-of-woman-walking-alone-on-the-beach-2889491/";

  @override
  Widget build(BuildContext context) {
    double height = 40;
    double width = 40;
    // Timer(Duration(seconds: 3), () {
    //   Navigator.pushReplacementNamed(context, 'home');
    // });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StickerEditingView(
              isnetwork: true,
              height: 300,
              width: 300,
              imgUrl: img,
              fonts: const [
                'teko',
                'ps',
              ],
              palletColor: const [
                Colors.red,
                Colors.green,
              ],
              assetList: const [],
            ),
            const Spacer(),
            Image.asset(
              "assets/images/quote.png",
              height: height,
              width: width,
            ),
            const SizedBox(
              height: 50,
            ),
            RichText(
              text: TextSpan(
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(fontSize: 50, color: Colors.black),
                ),
                children: const [
                  TextSpan(text: "Get\n"),
                  TextSpan(
                      text: "Inspired",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
                child: const Text(
                  "Let's Go",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
