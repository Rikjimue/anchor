import 'package:anchor/screens/home_screen.dart';
import 'package:anchor/screens/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State <SplashScreen> createState() =>  _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> 
    with SingleTickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
    // TODO: Maybe remove top and bottom UI bars on splashscreen

    Future.delayed(const Duration(seconds: 2), () { // TODO: Change time to when data is loaded
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => const LoginScreen(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: ShaderMask(
            shaderCallback: (bounds) => const LinearGradient(
              colors: [Color.fromARGB(255, 201, 102, 22), Color.fromARGB(255, 239, 191, 90)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ).createShader(bounds),
            child: const Text(
              'Anchor',
              style: TextStyle(
                fontFamily: 'sf-pro-display',
                fontSize: 68.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}