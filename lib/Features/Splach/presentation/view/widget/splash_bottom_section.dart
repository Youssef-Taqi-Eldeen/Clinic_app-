import 'package:flutter/material.dart';

class SplachBottomSection extends StatelessWidget {
  const SplachBottomSection({super.key});

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
                  top: 6,
                  right: 6,
                ),
                decoration: const BoxDecoration(
                  color: Color(0xff4D9B91),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(24),
                  ),
                )),
          ),
          Expanded(
            flex: 4,
            child: Container(
              margin: const EdgeInsets.only(
                top: 6,
              ),
              child: Image.asset('assets/images/Image splach bottom.png'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
                margin: const EdgeInsets.only(
                  top: 6,
                  left: 6,
                ),
                decoration: const BoxDecoration(
                  color: Color(0xffD7A99C),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
