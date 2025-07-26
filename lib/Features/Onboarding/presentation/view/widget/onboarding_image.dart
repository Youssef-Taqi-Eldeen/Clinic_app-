import 'package:flutter/material.dart';

class OnboardingImage extends StatelessWidget {
  const OnboardingImage({
    super.key,
    required this.screenHeight,
    required this.image,
  });

  final double screenHeight;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight * 0.65,
      width: double.infinity,
      child: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}
