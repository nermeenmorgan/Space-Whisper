import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce_tharwat_samy/core/constants.dart';
import 'package:ecommerce_tharwat_samy/core/widgets/custom_buttons.dart';
import 'package:ecommerce_tharwat_samy/features/Home/presentation%20layer/home_view.dart';
import 'package:ecommerce_tharwat_samy/features/Home/widgets/internal%20screens/launch_view_body.dart';
import 'package:ecommerce_tharwat_samy/features/settings/presentation%20layer/settings_view.dart';
import 'package:ecommerce_tharwat_samy/features/startMyJourney/presentation%20layer/start_my_journey_view.dart';
import 'package:ecommerce_tharwat_samy/main.dart';
import 'package:ecommerce_tharwat_samy/translations/locale_keys_.g.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utils/size_config.dart';
import '../../../core/widgets/titles_widget.dart';
// import '../../../generated/l10n.dart';

class HomeViewBody extends StatefulWidget {
   HomeViewBody({Key? key}) : super(key: key);
  @override
  _HomeViewBodyState createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  bool showNewText = false;

  void _showNewText() {
    setState(() {
      showNewText = !showNewText;
    });

  }
  bool isContainerVisible = false;
  bool isContainer2Visible = false;
  bool isContainer3Visible = false;
  bool isContainer4Visible = false;
  bool isContainer5Visible = false;
  bool isContainer6Visible = false;
  bool isContainer7Visible = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0XFF051330),
        color: Color(0xFFF5F5F5),
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) {
          switch (index) {
            case 0:
              Get.to(() => HomeView(),
                  transition: Transition.rightToLeftWithFade,
                  duration: Duration(milliseconds: 600));
              break;
            case 1:
              Get.to(() => SettingsView(),
                  transition: Transition.rightToLeftWithFade,
                  duration: Duration(milliseconds: 600));
              break;
          // Add more cases for additional routes if needed
          }
        },
        items: [Icon(Icons.home), Icon(Icons.settings)],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/videos/home.gif'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [

            AnimatedPositioned(
              duration: Duration(milliseconds: 600),
              curve: Curves.easeInOut,

              top: showNewText ? -SizeConfig.screenHeight! : 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 200),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      // textAlign: IsArabic()? TextAlign.right:TextAlign.left ,
                  LocaleKeys.intro.tr,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: "boldTimes",
                        decoration: TextDecoration.none,
                      ),
                    ),
                    SizedBox(height: 50),
                    CustomGeneralButtonWhite(
                      text: "S.of(context).introbtn",
                      onTap: _showNewText,
                    ),
                  ],
                ),
              ),
            ),
            if (showNewText)
              ListView(
                children: [
                  TitlesWidget(text:
                  'Launch',icondata: Icons.launch,
                  ontap: (){
                    Get.to(LaunchScreen());
                  },
                  ),
                  TitlesWidget(text:
                  'Mission Data',icondata: Icons.data_usage,),
                  TitlesWidget(text:
                  'Space Gallery',icondata:  Icons.image,),
                  TitlesWidget(text:
                  'About the Sensor',icondata: Icons.sensor_door,),
                  TitlesWidget(text:
                  'Track EMIT Location',icondata: Icons.location_on,),
                  TitlesWidget(text:
                  'Go to VR Experience',icondata: Icons.videogame_asset,),
                  TitlesWidget(text:
                  'Resources',icondata: Icons.folder,),
                ],
              ),


          ],
        ),
      ),
    );
  }
}
