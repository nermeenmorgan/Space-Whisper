import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator ({Key? key, required this.dotIndex}) : super(key: key);
final int? dotIndex;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator: DotsDecorator(
        color: Colors.white,
        activeColor: Colors.white, shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: Colors.white)
      ),

      ),
      dotsCount: 3,
      position: dotIndex! );
  }
}
