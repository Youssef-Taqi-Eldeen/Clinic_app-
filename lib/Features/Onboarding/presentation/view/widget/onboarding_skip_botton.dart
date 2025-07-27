import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:y_clinic_app/core/utils/app_router.dart';

class OnboardingSkipButton extends StatelessWidget {
  const OnboardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.go(AppRouter.kLOginone);
      },
      child: const Text(
        "SKip",
        style: TextStyle(
            color: Color(0xff6B7280),
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: 'Inter'),
      ),
    );
  }
}
