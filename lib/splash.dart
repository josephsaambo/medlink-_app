import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medlink_app/components.dart';
import 'package:medlink_app/getStarted.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const GetStratedPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: RichText(
              text: TextSpan(
                  text: "Med",
                  style: TextStyle(
                      color: MedLinkColors.primaryBlue,
                      fontSize: 50,
                      fontFamily: "Satoshi",
                      fontWeight: FontWeight.bold),
                  children: [
                TextSpan(
                  text: "Link+",
                  style: TextStyle(
                      color: MedLinkColors.primaryRed,
                      fontSize: 50,
                      fontFamily: "Satoshi",
                      fontWeight: FontWeight.bold),
                )
              ])),
        ),
      ),
    );
  }
}
