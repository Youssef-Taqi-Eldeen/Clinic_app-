import 'package:flutter/material.dart';
import 'package:y_clinic_app/Features/Onboarding/presentation/view/widget/onboarding_image.dart';
import 'package:y_clinic_app/Features/Onboarding/presentation/view/widget/onboarding_next_botton.dart';
import 'package:y_clinic_app/Features/Onboarding/presentation/view/widget/onboarding_page_indicator.dart';
import 'package:y_clinic_app/Features/Onboarding/presentation/view/widget/onboarding_skip_botton.dart';
import 'package:y_clinic_app/Features/Onboarding/presentation/view/widget/onboarding_sub_title.dart';
import 'package:y_clinic_app/Features/Onboarding/presentation/view/widget/onboarding_title.dart';
import 'package:y_clinic_app/Features/login/one.dart';

class OnboardingPageThree extends StatelessWidget {
  const OnboardingPageThree({
    super.key,
    required this.screenHeight,
    required this.controller,
  });

  final double screenHeight;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          OnboardingImage(
            screenHeight: screenHeight,
            image: 'assets/images/Image onboading 3.png',
          ),
          const SizedBox(
            height: 24,
          ),
          const OnboardingTitle(
            title: 'Thousands of Online Specialists',
          ),
          const SizedBox(
            height: 6,
          ),
          const OnboardingSubTitle(
            subTitle:
                ' Explore a Vast Array of Online Medical Specialists, Offering an Extensive Range of Expertise Tailored to Your Healthcare Needs.',
          ),
          const SizedBox(
            height: 20,
          ),
          OnboardingNextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const One()),
              );
            },
          ),
          const SizedBox(
            height: 18,
          ),
          OnboardingPageIndicator(controller: controller),
          const OnboardingSkipButton(),
        ],
      ),
    );
  }
}
