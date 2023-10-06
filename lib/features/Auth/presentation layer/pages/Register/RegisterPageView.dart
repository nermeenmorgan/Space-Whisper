import 'package:ecommerce_tharwat_samy/features/Auth/presentation%20layer/pages/Register/widgets/Register_view_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterPageView extends StatelessWidget {
  const RegisterPageView({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: RegisterBody(),
    );
  }
}
