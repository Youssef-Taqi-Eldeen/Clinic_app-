import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPageIndicator extends StatelessWidget {
  const OnboardingPageIndicator({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    //دي بتاعت الجزاء النقط اللي بين الزرارين اللى اسمها Page Indicator
    // SizedBox(
    //   height: 50,
    //   child: PageView(
    //     controller: controller,
    //     children: const [
    //       Center(child: Text('Page 1')),
    //       Center(child: Text('Page 2')),
    //       Center(child: Text('Page 3')),
    //     ],
    //   ),
    // ),
    return SmoothPageIndicator(
      controller: controller, // مربوط بالـ PageView
      count: 3, // عدد الصفحات
      effect: const ExpandingDotsEffect(
        dotHeight: 10, // ارتفاع النقطة
        dotWidth: 10, // عرض النقطة العادية
        spacing: 8, // المسافة بين النقاط
        activeDotColor: Color(0xFF26232F), // لون النقطة المفعلة
        dotColor: Color(0xFF9B9B9B), // لون النقاط العادية
        expansionFactor: 4, // نسبة التمدد للنقطة المفعلة
        radius: 8, // درجة الاستدارة (الحواف)
      ),
    );
  }
}
