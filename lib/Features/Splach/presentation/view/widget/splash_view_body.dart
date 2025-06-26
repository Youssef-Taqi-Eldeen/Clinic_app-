import 'package:flutter/material.dart';
import 'package:y_clinic_app/Features/Splach/presentation/view/widget/splash_bottom_section.dart';
import 'package:y_clinic_app/Features/Splach/presentation/view/widget/splash_middle_section.dart';
import 'package:y_clinic_app/Features/Splach/presentation/view/widget/splash_top_section.dart';

class SplachViewBody extends StatelessWidget {
  const SplachViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SplashTopSection(),
        SplachMiddleSection(),
        SplachBottomSection(),
      ],
    );
  }
}
