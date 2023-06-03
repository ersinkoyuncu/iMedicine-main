import 'package:flutter/material.dart';

import '../splash/splash_screen.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  
 
  Widget build(BuildContext context) {
    return MaterialApp(
        home:  

        SplashScreen(),
        );
  }
}
