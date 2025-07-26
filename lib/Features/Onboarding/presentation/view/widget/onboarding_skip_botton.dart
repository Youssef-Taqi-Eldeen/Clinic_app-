import 'package:flutter/material.dart';

class OnboardingSkipButton extends StatelessWidget {
  const OnboardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
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
