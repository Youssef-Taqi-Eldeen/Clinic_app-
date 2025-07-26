import 'package:flutter/material.dart';
import 'package:y_clinic_app/Features/Onboarding/presentation/view/widget/onboarding_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final PageController controller = PageController();

    return Scaffold(
      body: OnboardingBody(screenHeight: screenHeight, controller: controller),
    );
  }
}
