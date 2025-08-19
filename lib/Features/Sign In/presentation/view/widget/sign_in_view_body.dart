import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:y_clinic_app/Features/Onboarding/presentation/view/widget/custom_botton.dart';
import 'package:y_clinic_app/Features/Sign%20up/presentation/view/widget/custom_text_field.dart';
import 'package:y_clinic_app/Features/Sign%20up/presentation/view/widget/section_image_two_text.dart';
import 'package:y_clinic_app/Features/Sign%20up/presentation/view/widget/section_text_field.dart';
import 'package:y_clinic_app/Features/Sign%20up/presentation/view/widget/separator.dart';
import 'package:y_clinic_app/Features/Sign%20up/presentation/view/widget/social_button.dart';
import 'package:y_clinic_app/Features/Sign%20up/presentation/view/widget/text_bottom.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 63, right: 24, left: 24, bottom: 22),
      child: Column(
        children: [
          Image.asset(
            'assets/images/Black Logo.png',
          ),
          const SizedBox(
            height: 23,
          ),
          Text(
            'Hi, Welcome Back! ',
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
            'Hope you’re doing fine.',
            style: GoogleFonts.inter(
              fontSize: 14,
              color: const Color(0xff6B7280),
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const CustomTextField(
            hintText: 'Your Email',
            imagePath: 'assets/images/email icon.png',
          ),
          const SizedBox(
            height: 18,
          ),
          const CustomTextField(
            hintText: 'Password',
            imagePath: 'assets/images/lock icon.png',
            obscureText: true,
          ),
          const SizedBox(
            height: 22,
          ),
          CustomButton(
            onPressed: () {},
            text: "Sign In",
          ),
          const Separator(),
          const SocialButton(
            image: 'assets/images/Google - Original.png',
            textButton: 'Continue with Facebook',
          ),
          const SizedBox(
            height: 16,
          ),
          const SocialButton(
            image: 'assets/images/_Facebook.png',
            textButton: 'Continue with Facebook',
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Forgot password?",
              style: GoogleFonts.inter(
                color: const Color(0xff1C64F2),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          // const SizedBox(
          //   height: 18,
          // ),
          Row(
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
          ),
        ],
      ),
    );
  }
}
