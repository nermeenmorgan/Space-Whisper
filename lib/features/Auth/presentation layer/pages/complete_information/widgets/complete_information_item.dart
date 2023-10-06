import 'package:ecommerce_tharwat_samy/core/constants.dart';
import 'package:flutter/cupertino.dart';

class CompleteInfoItem extends StatelessWidget {
  const CompleteInfoItem(
      {Key? key, @required this.text, this.maxlines, this.inputType}) : super(key: key);
final String? text;
final int? maxlines;
final TextInputType? inputType;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text!,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            color: KmainColor,
            fontWeight: FontWeight.w600,
            height: 1.5625,
          ),
          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.center,
          softWrap: false,
        )
      ],
    );
  }
}
