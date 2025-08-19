import 'package:flutter/material.dart';
import 'package:y_clinic_app/Features/Onboarding/presentation/view/widget/custom_botton.dart';
import 'package:y_clinic_app/Features/Profile/presentation/view/widget/app_bar_profile_view.dart';
import 'package:y_clinic_app/Features/Profile/presentation/view/widget/app_dialogs.dart';
import 'package:y_clinic_app/Features/Profile/presentation/view/widget/gender_dropdown.dart';
import 'package:y_clinic_app/Features/Profile/presentation/view/widget/profile_image_with_icon.dart';
import 'package:y_clinic_app/Features/Sign%20up/presentation/view/widget/custom_text_field.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 52, right: 24, left: 24, bottom: 22),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const AppBarProfileView(),
            const SizedBox(
              height: 16,
            ),
            const ProfileImageWithIcon(),
            const SizedBox(
              height: 20,
            ),
            const CustomTextField(
              hintText: 'Michael Jordan',
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextField(
              hintText: 'Nickname',
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextField(
              hintText: 'name@example.com',
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextField(
              hintText: 'Date of Birth',
              imagePath: 'assets/images/calendar-2.png',
            ),
            const SizedBox(
              height: 20,
            ),
            const GenderDropdown(),
            const SizedBox(
              height: 32,
            ),
            CustomButton(
                onPressed: () {
                  AppDialogs.showCongrats(context);
                },
                text: 'Save')
          ],
        ),
      ),
    );
  }
}
