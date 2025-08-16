import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarProfileView extends StatelessWidget {
  const AppBarProfileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.arrow_back,
          size: 30,
        ),
        const SizedBox(
          width: 14,
        ),
        Text(
          'Fill Your Account',
          style: GoogleFonts.inter(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: const Color(0xff374151),
          ),
        ),
      ],
    );
  }
}
