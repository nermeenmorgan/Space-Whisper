import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce_tharwat_samy/core/widgets/custom_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../../../core/constants.dart';
import '../../../core/utils/size_config.dart';
import '../../../main.dart';
import '../../Home/presentation layer/home_view.dart';
import '../presentation layer/settings_view.dart';


class SettingsViewBody extends StatefulWidget {
  const SettingsViewBody({Key? key}) : super(key: key);

  @override
  State<SettingsViewBody> createState() => _SettingsViewBodyState();
}

class _SettingsViewBodyState extends State<SettingsViewBody> {
  void EngLanguage  () async {
    await context.setLocale(Locale('en'));
  }
  void ARLanguage  () async {
    await context.setLocale(Locale('ar'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KmainColor,
      body: Column(
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.all(16.0),
    // Add padding to the button
              child: CustomGeneralButton(
                onTap: () {
                  EngLanguage(); // Uncomment this line to enable language toggle
                },
                text:"English" ,

              ),
            ),
          ),
    Center(
    child: Container(
    padding: EdgeInsets.all(16.0),
    // Add padding to the button
    child: CustomGeneralButton(
    onTap: () {
    ARLanguage(); // Uncomment this line to enable language toggle
    },
    text:"العربية" ,

    ),
    ),
    ),
        ],
      ));
  }

}
