import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:y_clinic_app/Features/Onboarding/presentation/view/widget/onboarding_sub_title.dart';
import 'package:y_clinic_app/Features/Onboarding/presentation/view/widget/onboarding_title.dart';
import 'package:y_clinic_app/Home/home.dart';

class AppDialogs {
  static void showCongrats(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/cheak congration.png',
                height: 132,
                width: 132,
              ),
              const SizedBox(height: 24),
              const OnboardingTitle(title: 'Congratulations!'),
              const SizedBox(height: 12),
              const OnboardingSubTitle(
                  subTitle:
                      'Your account is ready to use. You will be redirected to the Home Page in a few seconds...'),
              const SizedBox(height: 24),
              const SpinKitFadingCircle(
                color: Colors.black,
                size: 57,
              ),
            ],
          ),
        );
      },
    );

    // هذا الجزء يضمن عدم حدوث _debugLocked exception
    Future.delayed(const Duration(seconds: 3), () {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.of(context).pop();
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ));
      });
    });
  }
}
