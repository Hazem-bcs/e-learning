import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class HomeController extends GetxController {
  onTapNavigationBar(int index);

  onPageChange(int index);
}

class HomeControllerImp extends HomeController {
  // -------------------  init vars   ----------------------
  // selected screen in navigation bar
  int selectedScreen = 0;

  // init Page controller
  final PageController? pageController = PageController();

  // -------------------  function override   ----------------------
  @override
  onTapNavigationBar(int index) {
    selectedScreen = index;
    pageController?.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    update();
  }

  @override
  onPageChange(int index) {
    selectedScreen = index;
    update();
  }
}
