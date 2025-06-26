import 'package:flutter/material.dart';

class SplashTopSection extends StatelessWidget {
  const SplashTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      height: screenHeight * 0.31,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
                margin: const EdgeInsets.only(
                  bottom: 6,
                  right: 6,
                ),
                decoration: const BoxDecoration(
                  color: Color(0xffACA1CD),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(24),
                  ),
                )),
          ),
          Expanded(
            flex: 4,
            child: Container(
              margin: const EdgeInsets.only(
                bottom: 6,
              ),
              child: Image.asset(
                'assets/images/Image splach top.png',
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
                margin: const EdgeInsets.only(
                  bottom: 6,
                  left: 6,
                ),
                decoration: const BoxDecoration(
                  color: Color(0xffDC9497),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
