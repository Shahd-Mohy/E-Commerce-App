import 'package:ecommerce_app/features/Forgetpassword/presentation/views/forget_password.dart';
import 'package:ecommerce_app/features/TrendyItems/presentation/views/trendy_items_view.dart';
import 'package:ecommerce_app/features/getStarted/presentation/get_started_view.dart';
import 'package:ecommerce_app/features/home/presentation/views/home_view.dart';
import 'package:ecommerce_app/features/onboarding/presentation/views/onboarding.dart';
import 'package:ecommerce_app/features/profile/presentation/views/profile_view.dart';
import 'package:ecommerce_app/features/signin/presentation/views/sign_in_view.dart';
import 'package:ecommerce_app/features/signup/presentation/views/sign_up_view.dart';
import 'package:ecommerce_app/features/splash/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kSignInView = '/SignInView';
  static const kOnboarding = '/onboardingView';
  static const kSignUpView = '/signUpView';
  static const kForgetassword = '/forgetPasswordView';
  static const kGetStarted = '/getStartedView';
  static const khomeView = '/homeView';
  static const kTrendyview = '/trendyItemsView';
  static const kProfileView = '/profileView';

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kOnboarding,
      builder: (context, state) => const Onboarding(),
    ),
    GoRoute(
      path: kSignInView,
      builder: (context, state) => const SignInView(),
    ),
    GoRoute(
      path: kSignUpView,
      builder: (context, state) => const SignUpView(),
    ),
    GoRoute(
      path: kGetStarted,
      builder: (context, state) => GetStartedView(),
    ),
    GoRoute(
      path: kForgetassword,
      builder: (context, state) => const ForgetPasswordView(),
    ),
    GoRoute(
      path: khomeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: kTrendyview,
      builder: (context, state) => const TrendyItemsView(),
    ),
    GoRoute(
      path: kProfileView,
      builder: (context, state) => const ProfileView(),
    )
  ]);
}
