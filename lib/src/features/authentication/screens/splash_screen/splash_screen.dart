import 'package:flutter/material.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/image_string.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_string.dart';
import 'package:login_app/src/features/authentication/screens/welcome_screen/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;

  @override
  void initState() {
    // super.initState();
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(microseconds: 1600),
            top: animate ? -100 : 0,
            left: animate ?-50 : 0, //1000
            child: const Image(image: AssetImage(aSplashTopIcon)),
          ),
          AnimatedPositioned(
            duration: const Duration(microseconds: 1600),
            top: 150,
            left: animate ? aDefaultSize : -80,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  aAppName,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  aAppTagLine,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(microseconds: 1600),
            bottom:animate ? -100 : 0,
            left: animate ? -50 : 0,
            child: const Image(image: AssetImage(aSplashImage)),
          ),
          Positioned(
            bottom: 40,
            right: aDefaultSize,
            child: Container(
              width: aSplashContainerSize,
              height: aSplashContainerSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: aPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      animate = true;
    });
    await Future.delayed(const Duration(milliseconds: 5000));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const WelcomeScreen()));
  }
}
