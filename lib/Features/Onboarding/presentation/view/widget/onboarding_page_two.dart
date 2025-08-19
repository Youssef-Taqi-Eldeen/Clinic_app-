import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:y_clinic_app/Features/Onboarding/presentation/view/widget/onboarding_image.dart';
import 'package:y_clinic_app/Features/Onboarding/presentation/view/widget/custom_botton.dart';
import 'package:y_clinic_app/Features/Onboarding/presentation/view/widget/onboarding_page_indicator.dart';
import 'package:y_clinic_app/Features/Onboarding/presentation/view/widget/onboarding_skip_botton.dart';
import 'package:y_clinic_app/Features/Onboarding/presentation/view/widget/onboarding_sub_title.dart';
import 'package:y_clinic_app/Features/Onboarding/presentation/view/widget/onboarding_title.dart';
import 'package:y_clinic_app/core/utils/app_router.dart';

class OnboardingPageTwo extends StatelessWidget {
  const OnboardingPageTwo({
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
            image: 'assets/images/Image onboading 2.png',
          ),
          const SizedBox(
            height: 24,
          ),
          const OnboardingTitle(
            title: 'Connect with Specialists',
          ),
          const SizedBox(
            height: 6,
          ),
          const OnboardingSubTitle(
            subTitle:
                'Connect with Specialized Doctors Online for Convenient and Comprehensive Medical Consultations.',
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            onPressed: () {
              context.go(AppRouter.kOnboardingViewThree);
            },
            text: 'Next',
            padding: const EdgeInsets.symmetric(horizontal: 32),
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
