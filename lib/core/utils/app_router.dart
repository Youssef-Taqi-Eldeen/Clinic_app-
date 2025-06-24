import 'package:go_router/go_router.dart';
import 'package:y_clinic_app/Features/Splach/presentation/view/splash_view.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
    ],
  );
}
