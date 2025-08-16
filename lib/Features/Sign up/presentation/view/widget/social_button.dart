import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    required this.image,
    required this.textButton,
  });
  final String image;
  final String textButton;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: Color(0xffD1D5DB)),
        ),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            height: 24,
            width: 40,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            textButton,
            style: GoogleFonts.inter(
                fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
