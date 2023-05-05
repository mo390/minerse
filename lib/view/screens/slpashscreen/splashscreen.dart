import 'package:flutter/material.dart';
import '../../../modules/color.dart';
import '../welcomescreen/welcom_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const WelcomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ClipRect(
              child: Image.asset(
                'img/logo.png',
                fit: BoxFit.cover,
                height: 220,
              ),
            ),
          ),
          const SizedBox(
            height: 13,
          ),
          Center(
            child: ClipRect(
              child: Image.asset(
                'img/Safety First.png',
                fit: BoxFit.cover,
                height: 26,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
