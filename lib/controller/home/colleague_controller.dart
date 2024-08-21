import 'package:elearnnig/core/constent/routes.dart';
import 'package:elearnnig/core/services/services.dart';
import 'package:elearnnig/data/data_source/dynamic/colleague/colleague_data.dart';
import 'package:elearnnig/data/model/home/colleague_model.dart';
import 'package:get/get.dart';

abstract class ColleagueController extends GetxController {
  changeIsLoading();
  goToHomeScreen(int colleagueId);
}

class ColleagueControllerImp extends ColleagueController {
  // get Data from DataBase
  ColleagueData colleagueData = ColleagueData();
  // init List to store all Colleague
  List<ColleagueModel> listColleagueModel = [];
  // this for Text and ImageScale animation
  RxList<RxBool> opacityForText = <RxBool>[].obs;
  // when get data remove shimmer effect
  bool isLoading = true;

  @override
  onInit() async {
    super.onInit();
    listColleagueModel = await colleagueData.getListColleagueData();
    for (int i = 0; i < listColleagueModel.length; i++) {
      opacityForText.add(true.obs);
    }
    changeIsLoading();
  }

  @override
  changeIsLoading() {
    isLoading = !isLoading;
    update();
  }

  @override
  goToHomeScreen(int colleagueId) {
    MyServices myServices = Get.find();
    myServices.loginSharedPreferences.setString("colleagueId", "$colleagueId");
    myServices.loginSharedPreferences.setString("skipColleagueScreen", "true");
    Get.offNamed(AppRoutes.homePageScreen);
  }
}
