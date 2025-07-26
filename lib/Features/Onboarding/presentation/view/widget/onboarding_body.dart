import 'package:flutter/material.dart';
import 'package:y_clinic_app/Features/Onboarding/presentation/view/widget/onboarding_page_one.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({
    super.key,
    required this.screenHeight,
    required this.controller,
  });

  final double screenHeight;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return OnboardingPageOne(
        screenHeight: screenHeight, controller: controller);
  }
}
