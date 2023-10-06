
import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce_tharwat_samy/translations/codegen_loader.g.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
// import 'package:intl/intl.dart';
import 'features/splash/splash/splash_view.dart';
// import 'generated/l10n.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
      EasyLocalization(child: const SpaceWhisper(), supportedLocales: [Locale('en'), Locale('ar'),],
  path: 'assets/translations', fallbackLocale: Locale('en'),
      assetLoader: CodegenLoader(),
      )
      );
}

class SpaceWhisper extends StatelessWidget {
  const SpaceWhisper({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      localizationsDelegates: context.localizationDelegates,
supportedLocales: context.supportedLocales,
locale: context.locale,


// locale: const Locale('en'),
      // localizationsDelegates: [
      //   S.delegate,
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      // supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(fontFamily: "poppins"),
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
// bool IsArabic(){
//   return Intl.getCurrentLocale()=='ar';
// }
