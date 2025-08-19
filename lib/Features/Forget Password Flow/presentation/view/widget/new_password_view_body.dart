import 'package:flutter/material.dart';
import 'package:y_clinic_app/Features/Onboarding/presentation/view/widget/custom_botton.dart';
import 'package:y_clinic_app/Features/Onboarding/presentation/view/widget/onboarding_sub_title.dart';
import 'package:y_clinic_app/Features/Onboarding/presentation/view/widget/onboarding_title.dart';
import 'package:y_clinic_app/Features/Sign%20up/presentation/view/widget/custom_text_field.dart';

class NewPasswordViewBody extends StatelessWidget {
  const NewPasswordViewBody({super.key});

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
            const OnboardingTitle(title: 'Create new password'),
            const SizedBox(
              height: 8,
            ),
            const OnboardingSubTitle(
              subTitle:
                  'Your new password must be different form previously used password',
            ),
            const SizedBox(
              height: 32,
            ),
            const CustomTextField(
              hintText: 'Password',
              imagePath: 'assets/images/lock icon.png',
              obscureText: true,
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextField(
              hintText: 'Confirm Password',
              imagePath: 'assets/images/lock icon.png',
              obscureText: true,
            ),
            const SizedBox(
              height: 32,
            ),
            CustomButton(onPressed: () {}, text: 'Reset Password'),
          ],
        ),
      ),
    );
  }
}
