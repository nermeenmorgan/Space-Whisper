import 'package:ecommerce_tharwat_samy/features/onboarding/widgets/page_view_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({Key? key, @required this.pageController}) : super(key: key);


  @override

  final PageController? pageController;

  Widget build(BuildContext context) {
    return
      PageView(
          controller: pageController,
          children:[
            PageViewItem(
              img: 'assets/images/1.png' ,
            ),
            PageViewItem(
              img: 'assets/images/2.png' ,
            ),
            PageViewItem(
              img: 'assets/images/3.png' ,
            ),
          ]
      );
  }
}