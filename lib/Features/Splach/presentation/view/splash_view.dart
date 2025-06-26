import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:y_clinic_app/Features/Splach/presentation/view/widget/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SplachViewBody(),
    );
  }
}
