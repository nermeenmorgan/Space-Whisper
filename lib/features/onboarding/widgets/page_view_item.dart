import 'package:ecommerce_tharwat_samy/core/widgets/spaceWidget.dart';
import 'package:flutter/cupertino.dart';

import '../../../core/utils/size_config.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({Key? key, required this.img}) : super(key: key);

  final String? img;
  @override
  Widget build(BuildContext context) {
    return Image.asset(img!, fit: BoxFit.cover,);
  }
}
