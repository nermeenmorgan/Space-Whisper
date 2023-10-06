import 'package:awesome_icons/awesome_icons.dart';
import 'package:ecommerce_tharwat_samy/core/constants.dart';
import 'package:ecommerce_tharwat_samy/core/widgets/custom_buttons.dart';
import 'package:ecommerce_tharwat_samy/core/widgets/custom_text_field.dart';
import 'package:ecommerce_tharwat_samy/features/Home/presentation%20layer/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../../core/utils/size_config.dart';
import '../../../../../../core/widgets/spaceWidget.dart';
import '../../Login/login_view.dart';
import '../../complete_information/complete_information_view.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bgGradient.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VerticalSpace(11),

       Text('Create new Account',textAlign: TextAlign.center,
           style: TextStyle(fontSize: 45,

             color: CupertinoColors.white,
             fontWeight: FontWeight.w700,)),
          VerticalSpace(1),

          Row(
mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already Registered? ", style: TextStyle(fontSize: 20,
                color: CupertinoColors.white,
                fontWeight: FontWeight.w700,)),
      GestureDetector(onTap: (){
        Get.to(() => LoginView(),
    transition: Transition.rightToLeftWithFade,
    duration: Duration(milliseconds: 600));
        },
        child: Text(" Log in here.", style: TextStyle(fontSize: 20,
          decoration: TextDecoration.underline,
          decorationThickness: 0.7,
          decorationColor: Colors.white,
          color: CupertinoColors.white,
          fontWeight: FontWeight.w700,)),
      ),

            ],
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Text("Name",style: TextStyle(fontSize: 20,
              fontFamily: "poppins",
              color: CupertinoColors.white,
              fontWeight: FontWeight.w700,)),
          ),
          SizedBox(height: 10),
          CustomTextField(textInputType: TextInputType.text, onSave: (value) => {},),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Text("Email",style: TextStyle(fontSize: 20,
              fontFamily: "poppins",
              color: CupertinoColors.white,
              fontWeight: FontWeight.w700,)),
          ),
          SizedBox(height: 10),
          CustomTextField(textInputType: TextInputType.text, onSave: (value) => {},),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Text("Password",style: TextStyle(fontSize: 20,
              fontFamily: "poppins",
              color: CupertinoColors.white,
              fontWeight: FontWeight.w700,)),
          ),
          SizedBox(height: 10),
          CustomTextField(textInputType: TextInputType.text, onSave: (value) => {},),
          SizedBox(height: 20),
          CustomGeneralButton(text: "Sign Up", onTap: (){
            Get.to(() => HomeView(),
                transition: Transition.zoom,
                duration: Duration(milliseconds: 600));
          }),
          SizedBox(height: 30),


        ],
      ),
    );

  }
}
