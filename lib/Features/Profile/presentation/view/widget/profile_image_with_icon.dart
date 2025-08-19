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
            radius: 90,
            backgroundImage: AssetImage("assets/images/profile-circle.png"),
          ),
          Positioned(
            bottom: 17,
            right: 10,
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                color: Colors.black,
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
