import 'package:flutter/material.dart';
import 'package:y_clinic_app/Features/Forget%20Password%20Flow/presentation/view/verify_code_view.dart';
import 'package:y_clinic_app/Features/Onboarding/presentation/view/widget/custom_botton.dart';
import 'package:y_clinic_app/Features/Onboarding/presentation/view/widget/onboarding_sub_title.dart';
import 'package:y_clinic_app/Features/Onboarding/presentation/view/widget/onboarding_title.dart';
import 'package:y_clinic_app/Features/Sign%20up/presentation/view/widget/custom_text_field.dart';

class SendCodeViewBody extends StatelessWidget {
  const SendCodeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 52, right: 24, left: 24, bottom: 22),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Icon(
                Icons.arrow_back,
                size: 30,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Image.asset(
              'assets/images/Black Logo.png',
            ),
            const SizedBox(
              height: 32,
            ),
            const OnboardingTitle(title: 'Forget Password?'),
            const SizedBox(
              height: 8,
            ),
            const OnboardingSubTitle(
              subTitle:
                  'Enter your Email, we will send you a verification code.',
            ),
            const SizedBox(
              height: 32,
            ),
            const CustomTextField(
              hintText: 'Your Email',
              imagePath: 'assets/images/email icon.png',
            ),
            const SizedBox(
              height: 32,
            ),
            CustomButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VerifyCodeView(),
                      ));
                },
                text: 'Send Code')
          ],
        ),
      ),
    );
  }
}
