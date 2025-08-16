import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextBottom extends StatelessWidget {
  const TextBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Do you have an account ?",
          style: GoogleFonts.inter(
            color: const Color(0xff6B7280),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Sign In",
            style: GoogleFonts.inter(
              color: const Color(0xff1C64F2),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
