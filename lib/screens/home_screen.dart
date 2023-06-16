import 'package:flutter/material.dart';
import 'package:my_flutter/responsive/mobile_screen_layout.dart';
import 'package:my_flutter/responsive/responsive_layout.dart';
import 'package:my_flutter/responsive/web_screen_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(mobileScreenLayout: MobileScreenLayout(), webScreenLayout: WebScreenLayout());
  }
}