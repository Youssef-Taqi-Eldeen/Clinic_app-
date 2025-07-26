import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingSubTitle extends StatelessWidget {
  const OnboardingSubTitle({
    super.key,
    required this.subTitle,
  });
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Text(
      subTitle,
      textAlign: TextAlign.center,
      style: GoogleFonts.inter(
        fontSize: 16,
        color: const Color(0xff6B7280),
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
