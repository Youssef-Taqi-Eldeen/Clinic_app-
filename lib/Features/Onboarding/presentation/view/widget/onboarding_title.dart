import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingTitle extends StatelessWidget {
  const OnboardingTitle({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.inter(
        fontSize: 20,
        color: const Color(0xff374151),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
