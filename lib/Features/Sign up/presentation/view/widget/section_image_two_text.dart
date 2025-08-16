import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionImageAndTwoText extends StatelessWidget {
  const SectionImageAndTwoText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/Black Logo.png',
        ),
        const SizedBox(
          height: 23,
        ),
        Text(
          'Create Account',
          style: GoogleFonts.inter(
            fontSize: 20,
            color: const Color(0xff1C2A3A),
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        Text(
          'We are here to help you!',
          style: GoogleFonts.inter(
            fontSize: 14,
            color: const Color(0xff6B7280),
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
