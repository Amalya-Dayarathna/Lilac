// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lilac_shopping/constants.dart';
import 'package:lilac_shopping/screens/Home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  //Function to navigate to the home page after 0.5 seconds
  _navigatetohome() async {
    await Future.delayed(const Duration(seconds: 1500), () {});

    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const LilacHomePage()));
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color.fromRGBO(237, 187, 186, 3),
      //backgroundColor: const Color.fromRGBO(55, 65, 81, 3),
      backgroundColor: kprimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.PNG',
              scale: 2,
            ),
          ],
        ),
      ),
    );
  }
}
