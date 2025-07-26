import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:y_clinic_app/Features/Splach/presentation/view/widget/splash_view_body.dart';
import 'package:y_clinic_app/core/utils/app_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      context.go(AppRouter.kOnboardingViewOne);
    });
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SplachViewBody(),
    );
  }
}
