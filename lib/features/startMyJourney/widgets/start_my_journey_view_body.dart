import 'package:ecommerce_tharwat_samy/core/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartMyJourneyViewBody extends StatelessWidget {
  const StartMyJourneyViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KmainColor,
      body:Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/images/journeyBG.png'),
    fit: BoxFit.cover,
    ),
      ),
        child: Column(children: [
          Row(children: [
            GestureDetector(child: Column(
              children: [
                Text("data"),
                Text("data"),
              ],
            )

            ),
            GestureDetector(child: Column(
              children: [
                Text("data"),
                Text("data"),
              ],
            ))
          ],),
          Row(children: [
            GestureDetector(child: Column(
              children: [
                Text("data"),
                Text("data"),
              ],
            )),
            GestureDetector(child: Column(
              children: [
                Text("data"),
                Text("data"),
              ],
            )),
          ],)
        ],),
      ));
  }
}
