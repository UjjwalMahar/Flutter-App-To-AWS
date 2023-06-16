import 'package:flutter/material.dart';
import 'package:my_flutter/responsive/mobile_screen_layout.dart';
import 'package:my_flutter/responsive/responsive_layout.dart';
import 'package:my_flutter/responsive/web_screen_layout.dart';
import 'package:my_flutter/screens/home_screen.dart';
import 'package:my_flutter/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ujjwal-Mahar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: webBackgroundColor
      ),
      home: HomeScreen(),
    );
  }
}


