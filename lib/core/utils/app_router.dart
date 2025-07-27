import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:y_clinic_app/Features/Onboarding/presentation/view/onboarding_view.dart';
import 'package:y_clinic_app/Features/Onboarding/presentation/view/widget/onboarding_page_three.dart';
import 'package:y_clinic_app/Features/Onboarding/presentation/view/widget/onboarding_page_two.dart';
import 'package:y_clinic_app/Features/Splach/presentation/view/splash_view.dart';
import 'package:y_clinic_app/Features/login/one.dart';

final PageController controller = PageController();

abstract class AppRouter {
  static const kOnboardingViewOne = '/OnboardingPageOne';
  static const kOnboardingViewTwo = '/OnboardingPageTwo';
  static const kOnboardingViewThree = '/OnboardingPageThree';
  static const kLOginone = '/One';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
        routes: [
          GoRoute(
              path: kOnboardingViewOne,
              builder: (context, state) {
                return const OnboardingView();
              }),
          GoRoute(
              path: kOnboardingViewTwo,
              builder: (context, state) {
                final screenHeight = MediaQuery.of(context).size.height;
                return OnboardingPageTwo(
                  screenHeight: screenHeight,
                  controller: controller,
                );
              }),
          GoRoute(
              path: kOnboardingViewThree,
              builder: (context, state) {
                final screenHeight = MediaQuery.of(context).size.height;
                return OnboardingPageThree(
                  screenHeight: screenHeight,
                  controller: controller,
                );
              }),
          GoRoute(
            path: kLOginone,
            builder: (context, state) => const One(),
          )
        ],
      ),
    ],
  );
}
