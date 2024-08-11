import 'package:elearnnig/core/constent/routes.dart';
import 'package:elearnnig/view/screen/auth/login_screen.dart';
import 'package:elearnnig/view/screen/on_boarding/on_boarding_page_one.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage> routes = [
  GetPage(
    name: '/',
    page: () => const OnBoardingPageOne(),
  ),
  GetPage(
    name: AppRoutes.loginScreen,
    page: () => const LoginScreen(),
  )
];
