import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String? imagePath;
  final bool obscureText;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.obscureText = false,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.inter(
          color: const Color(0xff9CA3AF),
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        prefixIcon: imagePath != null
            ? Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(imagePath!, width: 24, height: 24),
              )
            : null,
        filled: true,
        fillColor: const Color(0xffF9FAFB),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Color(0xffD1D5DB),
            width: 1.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.blue,
            width: 2,
          ),
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      ),
    );
  }
}
