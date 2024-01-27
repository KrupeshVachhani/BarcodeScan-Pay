import 'package:barcodescanner/components/screens/onboarding/Onboarding.dart';
import 'package:barcodescanner/utils/Theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnBoarding(),
      debugShowCheckedModeBanner: false,
    );
  }
}
