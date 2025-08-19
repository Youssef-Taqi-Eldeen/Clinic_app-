import 'package:flutter/material.dart';
import 'package:y_clinic_app/Features/Onboarding/presentation/view/widget/custom_botton.dart';
import 'package:y_clinic_app/Features/Sign%20up/presentation/view/widget/section_image_two_text.dart';
import 'package:y_clinic_app/Features/Sign%20up/presentation/view/widget/section_text_field.dart';
import 'package:y_clinic_app/Features/Sign%20up/presentation/view/widget/separator.dart';
import 'package:y_clinic_app/Features/Sign%20up/presentation/view/widget/social_button.dart';
import 'package:y_clinic_app/Features/Sign%20up/presentation/view/widget/text_bottom.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 63, right: 24, left: 24, bottom: 22),
      child: Column(
        children: [
          const SectionImageAndTwoText(),
          const SizedBox(
            height: 30,
          ),
          const SectionTextField(),
          const SizedBox(
            height: 22,
          ),
          CustomButton(
            onPressed: () {},
            text: "Create Account",
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
          const TextBottom(),
        ],
      ),
    );
  }
}
