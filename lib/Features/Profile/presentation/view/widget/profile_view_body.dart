import 'package:flutter/material.dart';
import 'package:y_clinic_app/Features/Profile/presentation/view/widget/app_bar_profile_view.dart';
import 'package:y_clinic_app/Features/Profile/presentation/view/widget/profile_image_with_icon.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 52, right: 24, left: 24, bottom: 22),
      child: Column(
        children: [
          AppBarProfileView(),
          SizedBox(
            height: 16,
          ),
          ProfileImageWithIcon()
        ],
      ),
    );
  }
}
