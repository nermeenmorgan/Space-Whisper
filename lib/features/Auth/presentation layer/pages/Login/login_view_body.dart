import 'package:ecommerce_tharwat_samy/features/Auth/presentation%20layer/pages/Register/RegisterPageView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../../../../../core/widgets/custom_buttons.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import '../../../../../core/widgets/spaceWidget.dart';
import '../../../../Home/presentation layer/home_view.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bgGradient.png'),
          fit: BoxFit.cover,
        ),
      ),
      child:ListView(
        children: [
          VerticalSpace(20),

          Padding(
            padding: const EdgeInsets.only(left:30),
            child: Text('Login',textAlign: TextAlign.center,
                style: TextStyle(fontSize: 45,

                  color: CupertinoColors.white,
                  fontWeight: FontWeight.w700,)),
          ),
          VerticalSpace(1),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Sign in to continue ", style: TextStyle(fontSize: 20,
                color: CupertinoColors.white,
                fontWeight: FontWeight.w700,)),
              GestureDetector(onTap: (){
                Get.to(() => RegisterPageView(),
                    transition: Transition.rightToLeftWithFade,
                    duration: Duration(milliseconds: 600));
              },
                child: Text(" or Sign Up here.", style: TextStyle(fontSize: 20,
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
          CustomGeneralButton(text: "Sign In", onTap: (){
            Get.to(() => HomeView(),
                transition: Transition.zoom,
                duration: Duration(milliseconds: 600));
          }),
          SizedBox(height: 30),


        ],
      ),
    );;
  }
}
