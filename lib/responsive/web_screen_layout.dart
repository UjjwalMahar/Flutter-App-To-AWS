import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:my_flutter/utils/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: webBackgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 80)),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 400,
                child: Center(
                  child: RiveAnimation.asset("assets/robo.riv"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text(
                "Hi I am Ujjwal Mahar !",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {
                          const url = "https://www.linkedin.com/in/ujjwal-mahar-354a0a229/";
                          launchUrl(Uri.parse(url));
                        },
                        icon: const FaIcon(FontAwesomeIcons.linkedinIn)),
                    IconButton(
                        onPressed: () {
                           const url = "https://github.com/UjjwalMahar";
                          launchUrl(Uri.parse(url));
                        },
                        icon: const FaIcon(FontAwesomeIcons.github)),
                    IconButton(
                        onPressed: () {
                           const url = "https://ujjwalmahar.hashnode.dev/";
                          launchUrl(Uri.parse(url));
                        },
                        icon: const FaIcon(FontAwesomeIcons.hashnode)),
                    IconButton(
                        onPressed: () {
                           const url = "https://twitter.com/UjjwalMahar";
                          launchUrl(Uri.parse(url));
                        },
                        icon: const FaIcon(FontAwesomeIcons.twitter)),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
