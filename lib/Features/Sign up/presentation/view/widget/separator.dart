import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Separator extends StatelessWidget {
  const Separator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: const Color(0xFF979797).withOpacity(0.5),
              thickness: 1,
              endIndent: 8,
            ),
          ),
          Text(
            'or',
            style: GoogleFonts.inter(
              fontSize: 16,
              color: const Color(0xFF6B7280),
              fontWeight: FontWeight.w500,
            ),
          ),
          Expanded(
            child: Divider(
              color: const Color(0xFF979797).withOpacity(0.5),
              thickness: 1,
              indent: 8,
            ),
          ),
        ],
      ),
    );
  }
}
