import 'package:flutter/material.dart';
import 'package:medlink_app/components.dart';

class GetStratedPage extends StatefulWidget {
  const GetStratedPage({super.key});

  @override
  State<GetStratedPage> createState() => _GetStratedPageState();
}

class _GetStratedPageState extends State<GetStratedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
          ),
          Image.asset(
            "images/ambulance.png",
            height: 200,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: RichText(
                text: TextSpan(
                  text: "Welcome to",
                  // textAlign: TextAlign.center,
                  style: TextStyle(
                      color: MedLinkColors.textColor,
                      fontSize: 25,
                      fontFamily: "Satoshi",
                      fontWeight: FontWeight.normal),
                  children: [
                    TextSpan(
                        text: " Med",
                        style: TextStyle(
                            color: MedLinkColors.primaryBlue,
                            fontSize: 25,
                            fontFamily: "Satoshi",
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                      text: "Link+",
                      style: TextStyle(
                          color: MedLinkColors.primaryRed,
                          fontSize: 25,
                          fontFamily: "Satoshi",
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                        text:
                            " the innovative platform that connects you to medical facilities from all around the world",
                        style: TextStyle(
                            color: MedLinkColors.textColor,
                            fontSize: 25,
                            fontFamily: "Satoshi",
                            fontWeight: FontWeight.normal)),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
                color: MedLinkColors.primaryBlue,
                borderRadius: BorderRadius.circular(10)),
            child: const Center(
              child: Text("Get Started",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: "Satoshi",
                      fontWeight: FontWeight.w600)),
            ),
          )
        ],
      ),
    );
  }
}
