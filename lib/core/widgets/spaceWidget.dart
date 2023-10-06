import 'package:flutter/cupertino.dart';

import '../utils/size_config.dart';

class HorizontalSpace extends StatelessWidget {
  const HorizontalSpace( this.val);
final double val;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize! * val!,
    );
  }
}
class VerticalSpace extends StatelessWidget {
  const VerticalSpace(this.x);
  final double x;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize! * x!,
    );
  }
}
