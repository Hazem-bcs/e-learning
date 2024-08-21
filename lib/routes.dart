import 'package:elearnnig/core/constent/routes.dart';
import 'package:elearnnig/core/middleware/colleague_middleware.dart';
import 'package:elearnnig/core/middleware/on_boarding_middleware.dart';
import 'package:elearnnig/view/screen/auth/help_center_screen.dart';
import 'package:elearnnig/view/screen/auth/login_screen.dart';
import 'package:elearnnig/view/screen/auth/rest_password_screen.dart';
import 'package:elearnnig/view/screen/auth/search_on_user.dart';
import 'package:elearnnig/view/screen/auth/signup_screen.dart';
import 'package:elearnnig/view/screen/auth/signup_with_email.dart';
import 'package:elearnnig/view/screen/auth/verification_screen.dart';
import 'package:elearnnig/view/screen/home/colleague_screen.dart';
import 'package:elearnnig/view/screen/home/home_page.dart';
import 'package:elearnnig/view/screen/on_boarding/on_boarding_page_one.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import 'core/middleware/login_middleware.dart';

List<GetPage> routes = [
  GetPage(
      name: '/',
      page: () => const OnBoardingPageOne(),
      middlewares: [OnBoardingMiddleware()]),
  GetPage(
    name: '/',
    page: () => const SignupWithEmail(),
  ),
  GetPage(
    name: AppRoutes.signupScreen,
    page: () => const SignupScreen(),
  ),
  GetPage(
    name: AppRoutes.signupScreenWithEmail,
    page: () => const SignupWithEmail(),
  ),
  GetPage(
      name: AppRoutes.loginScreen,
      page: () => const LoginScreen(),
      middlewares: [LoginMiddleware()]),
  GetPage(
    name: AppRoutes.searchOnUserScreen,
    page: () => const SearchOnUser(),
  ),
  GetPage(
    name: AppRoutes.restPasswordScreen,
    page: () => const RestPasswordScreen(),
  ),
  GetPage(
    name: AppRoutes.verificationScreen,
    page: () => const VerificationScreen(),
  ),
  GetPage(
    name: AppRoutes.helpCenterScreen,
    page: () => const HelpCenterScreen(),
  ),
  // ---------------------
  GetPage(
    name: AppRoutes.colleagueScreen,
    page: () => const ColleagueScreen(),
    middlewares: [ColleagueMiddleware()]
  ),
  GetPage(
      name: AppRoutes.homePageScreen,
      page: () => const HomeScreen(),
      transition: Transition.fadeIn),
];
