import 'package:flutter/material.dart';
import 'package:login_app/src/constants/image_string.dart';
import 'package:login_app/src/constants/text_string.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
          const Positioned(
            top: -100,
            left: -50, //1000
            child: Image(image: AssetImage(aSplashTopIcon)),
            ),
          Positioned(
            top: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(aAppName, style: Theme.of(context).textTheme.headlineSmall,),
                Text(aAppTagLine, style: Theme.of(context).textTheme.headlineMedium,),
              ],
            ),
            ),
            const Positioned(
            bottom: -100,
            left: -50,
            child: Image(image: AssetImage(aSplashImage)),
            ),
        ],
      ),
    );
  }
}
