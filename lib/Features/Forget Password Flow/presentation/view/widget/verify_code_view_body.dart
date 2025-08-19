import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:y_clinic_app/Features/Forget%20Password%20Flow/presentation/view/new_password_view.dart';
import 'package:y_clinic_app/Features/Forget%20Password%20Flow/presentation/view/widget/o_t_p_input_field.dart';
import 'package:y_clinic_app/Features/Onboarding/presentation/view/widget/custom_botton.dart';
import 'package:y_clinic_app/Features/Onboarding/presentation/view/widget/onboarding_sub_title.dart';
import 'package:y_clinic_app/Features/Onboarding/presentation/view/widget/onboarding_title.dart';

class VerifyCodeViewBody extends StatelessWidget {
  const VerifyCodeViewBody({super.key});

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
            const OnboardingTitle(title: 'Verify Code'),
            const SizedBox(
              height: 8,
            ),
            const OnboardingSubTitle(
              subTitle:
                  'Enter the the code \nwe just sent you on your registered Email',
            ),
            const SizedBox(
              height: 32,
            ),
            OTPInputField(
              onCompleted: (code) {
                //مش فاهم ايه لزمة البتاع دي
                print("OTP Entered: $code");
                // هنا ممكن تعمل verify API call
              },
            ),
            const SizedBox(
              height: 24,
            ),
            CustomButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NewPasswordView(),
                      ));
                },
                text: 'Verify'),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn’t get the Code?",
                  style: GoogleFonts.inter(
                    color: const Color(0xff6B7280),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Resend ",
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
      ),
    );
  }
}
