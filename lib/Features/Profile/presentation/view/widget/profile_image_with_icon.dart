import 'package:flutter/material.dart';

class ProfileImageWithIcon extends StatelessWidget {
  const ProfileImageWithIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          const CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 100,
            backgroundImage: AssetImage(
                "assets/images/profile-circle.png"), // أو NetworkImage
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                color: Colors.black, // خلفية القلم
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.edit,
                color: Colors.white,
                size: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
