import 'package:flutter/material.dart';
import 'package:y_clinic_app/Features/Sign%20up/presentation/view/widget/custom_text_field.dart';

class SectionTextField extends StatelessWidget {
  const SectionTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTextField(
          hintText: 'Your Name',
          imagePath: 'assets/images/User icon.png',
        ),
        SizedBox(
          height: 18,
        ),
        CustomTextField(
          hintText: 'Your Email',
          imagePath: 'assets/images/email icon.png',
        ),
        SizedBox(
          height: 18,
        ),
        CustomTextField(
          hintText: 'Password',
          imagePath: 'assets/images/lock icon.png',
          obscureText: true,
        ),
      ],
    );
  }
}
