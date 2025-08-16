import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonCreateAccount extends StatelessWidget {
  const ButtonCreateAccount({
    super.key,
    required this.onPressed,
  });
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff1C2A3A),
          elevation: 6,
          shadowColor: Colors.black.withOpacity(0.2),
        ),
        child: Text(
          "Create Account",
          style: GoogleFonts.inter(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
