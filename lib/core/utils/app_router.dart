import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:y_clinic_app/Features/Onboarding/presentation/view/onboarding_view.dart';
import 'package:y_clinic_app/Features/Onboarding/presentation/view/widget/onboarding_page_three.dart';
import 'package:y_clinic_app/Features/Onboarding/presentation/view/widget/onboarding_page_two.dart';
import 'package:y_clinic_app/Features/Profile/presentation/view/profile_view.dart';
import 'package:y_clinic_app/Features/Sign%20up/presentation/view/sign_up_view.dart';

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
        builder: (context, state) => const ProfileView(),
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
            builder: (context, state) => const SignUpView(),
          )
        ],
      ),
    ],
  );
}
