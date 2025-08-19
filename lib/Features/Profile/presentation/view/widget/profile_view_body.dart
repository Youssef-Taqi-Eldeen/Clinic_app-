import 'package:flutter/material.dart';
import 'package:y_clinic_app/Features/Onboarding/presentation/view/widget/custom_botton.dart';
import 'package:y_clinic_app/Features/Profile/presentation/view/widget/app_bar_profile_view.dart';
import 'package:y_clinic_app/Features/Profile/presentation/view/widget/gender_dropdown.dart';
import 'package:y_clinic_app/Features/Profile/presentation/view/widget/profile_image_with_icon.dart';
import 'package:y_clinic_app/Features/Sign%20up/presentation/view/widget/custom_text_field.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 52, right: 24, left: 24, bottom: 22),
      child: SingleChildScrollView(
        child: Column(
          children: [
            AppBarProfileView(),
            SizedBox(
              height: 16,
            ),
            ProfileImageWithIcon(),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hintText: 'Michael Jordan',
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hintText: 'Nickname',
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hintText: 'name@example.com',
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hintText: 'Date of Birth',
              imagePath: 'assets/images/calendar-2.png',
            ),
            SizedBox(
              height: 20,
            ),
            GenderDropdown(),
            SizedBox(
              height: 32,
            ),
            CustomButton(onPressed: () {}, text: 'Save')
          ],
        ),
      ),
    );
  }
}
