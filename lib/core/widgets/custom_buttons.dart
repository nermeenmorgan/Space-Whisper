import 'package:ecommerce_tharwat_samy/core/widgets/spaceWidget.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constants.dart';
import '../utils/size_config.dart';

class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton({Key? key, this.text, this.onTap}) : super(key: key);
final String? text;
  @override
  final VoidCallback? onTap;
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30), // Adjust the horizontal padding as needed

      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 60,
          width: SizeConfig.screenWidth,
          decoration: BoxDecoration(
            color: Color(0XFF02140A),
            borderRadius: BorderRadius.circular(8)
          ),
          child: Center(
            child: Text(
              text!,
              style: TextStyle(
                fontFamily: '',
                fontSize: 14,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.none
              ),
              softWrap: false,
            ),
          ),
        ),
      ),
    );
  }
}
class CustomButtonWithIcon extends StatelessWidget {
  const CustomButtonWithIcon({Key? key, this.text, this.onTap, this.color, this.customIconData}) : super(key: key);
  final String? text;
  final IconData? customIconData;
  final VoidCallback? onTap;
  final Color? color;
  @override

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
          width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
border: Border.all(
  color: Color(0xFF707070)
)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
Icon(customIconData!, color: color!),
            HorizontalSpace(6),
            Text(
              text!,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: KmainColor,
              ),
              softWrap: false,
            )

          ],
        )
        // Center(
        //   child: Text(text!,
        //   style: TextStyle(
        //     color: const Color(0xffffffff),
        //     fontSize: 14,
        //     fontWeight: FontWeight.w500,
        //
        //   ),
        //   textAlign: TextAlign.left,
        //   ),
        // ),
      ),

    );
  }
}
// btn with white bg
class CustomGeneralButtonWhite extends StatelessWidget {
  const CustomGeneralButtonWhite({Key? key, this.text, this.onTap}) : super(key: key);
  final String? text;
  @override
  final VoidCallback? onTap;
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8)
        ),
        child: Center(
          child: Text(
            text!,
            style: TextStyle(
                fontFamily: 'boldTimes',
                fontSize: 20,
                color: KmainColor,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.none
            ),
            softWrap: false,
          ),
        ),
      ),
    );
  }
}
