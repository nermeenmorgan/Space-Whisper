import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../onboarding/presentation layer/on_board_view.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 600));
    fadingAnimation = Tween<double>(begin: 0.2, end: 1).animate(animationController!);

    animationController?.forward();

    goToNextImplementation();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  void goToNextImplementation() {
    Future.delayed(Duration(seconds: 6), () {
      Get.to(() => OnBoardingView(), transition: Transition.fade);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeTransition(
          opacity: fadingAnimation!,
          child: Container(
            width: MediaQuery.of(context).size.width, // Set width to screen width
            height: MediaQuery.of(context).size.height, // Set height to screen height
            child: Image.asset(
              'assets/videos/mygiff.gif',
              fit: BoxFit.cover, // Ensure the image covers the entire container
            ),
          ),
        ),
      ),
    );
  }
}
