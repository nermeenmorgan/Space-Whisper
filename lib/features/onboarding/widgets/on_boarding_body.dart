import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommerce_tharwat_samy/core/constants.dart';
import 'package:ecommerce_tharwat_samy/features/Home/presentation%20layer/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/utils/size_config.dart';
import '../../../core/widgets/custom_buttons.dart';
import '../../../core/widgets/custom_indicator.dart';
import '../../Auth/presentation layer/pages/Register/RegisterPageView.dart';
import 'custom_page_view.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({Key? key}) : super(key: key);

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  PageController? pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          bottom: SizeConfig.defaultSize! * 22,
          child: CustomIndicator(
              dotIndex:
                  isControllerValid() ? pageController?.page?.toInt() : 0),
        ),
        CustomPageView(pageController: pageController),
        Visibility(
          visible:
              isControllerValid() && pageController?.page == 2 ? false : true,
          child: Positioned(
            top: SizeConfig.defaultSize! * 5,
            right: 32,
              child: GestureDetector(
                onTap: (){
                  Get.to(() => HomeView(),
                      transition: Transition.zoom,
                      duration: Duration(milliseconds: 600));
                },
                child: Container(alignment: Alignment.center,
                  width: 50,
                  padding: EdgeInsets.all(8.0), // Adjust the padding as needed
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0), // Adjust the radius for the desired roundness
                    color: Colors.white,
                  ),
                  child: Text(
                    'Skip',
                    style: TextStyle(

                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: KmainColor,
                    ),
                    softWrap: false,
                  ),
                ),
              )

          ),
        ),
        Positioned(
            left: SizeConfig.defaultSize! * 10,
            right: SizeConfig.defaultSize! * 10,
            bottom: SizeConfig.defaultSize! * 10,
            child: CustomGeneralButton(
              onTap: () => {
                if (pageController!.page == 0)
                  {
                    pageController?.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.ease)
                  }
                else if (pageController!.page == 1)
                  {
                    pageController?.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.bounceOut)
                  }
                else
                  {
                    Get.to(() => RegisterPageView(),
                        transition: Transition.zoom,
                        duration: Duration(milliseconds: 600))
                  }
              },
              text: isControllerValid() && pageController?.page == 2
                  ? "Get Started"
                  : "Next",
            )),
      ],
    );
  }

  bool isControllerValid() {
    if (pageController!.hasClients) {
      return true;
    } else {
      return false;
    }
  }
}
