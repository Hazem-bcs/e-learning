import 'package:elearnnig/core/constent/routes.dart';
import 'package:elearnnig/data/model/course_model.dart';
import 'package:elearnnig/data/model/search/record_search_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../data/data_source/dynamic/search/delete_record_data.dart';
import '../../data/data_source/dynamic/search/get_search_data.dart';
import '../../data/data_source/dynamic/search/search_courses_data.dart';

abstract class SearchController extends GetxController {
  searchIcon();

  onSearchFieldTap();

  clear();

  getSearchDataList();

  getSearchCourseDataList(String searchText);

  deleteRecord(String text, int i);

  onTextTap(String text);

  changeShowRecentSearch(bool value);

  addListenerToKeyBoardStatus();
}

class SearchControllerImp extends SearchController {
  // ---------------------- init vars section ----------------------

  // get instance from ObjectData class for get Data
  SearchCourseData searchCourseData = SearchCourseData();
  GetSearchRecordData getSearchRecordData = GetSearchRecordData();
  DeleteSearchRecordData deleteSearchRecordData = DeleteSearchRecordData();

  // init Record list to get data from database
  late List<SearchDataModel> recordSearchList;
  late List<SearchDataModel> topSearchList;
  // this not late for It's not in inInit function
  List<CourseModel> searchCourseList = [];

  // Init controller for search field
  final TextEditingController searchEditingController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final FocusNode focusNode = FocusNode();

  // who shows?
  RxBool showRecentSearch = true.obs;
  RxBool isLoading = true.obs;

  // init filter checkBox Vars
  bool _isYearFirst = false;
  bool _isSecondYear = false;
  bool _isThirdYear = false;
  bool _isFourthYear = false;
  bool _isFifthYear = false;
  bool _isPaid = false;

  // ---------------------- getter and setters ----------------------

  bool get isYearOne => _isYearFirst;

  set isYearOne(bool value) {
    _isYearFirst = value;
    update();
  }

  bool _isFree = false;

  bool get isYearTow => _isSecondYear;

  set isYearTow(bool value) {
    _isSecondYear = value;
    update();
  }

  bool get isYearThree => _isThirdYear;

  set isYearThree(bool value) {
    _isThirdYear = value;
    update();
  }

  bool get isYearFour => _isFourthYear;

  set isYearFour(bool value) {
    _isFourthYear = value;
    update();
  }

  bool get isYearFive => _isFifthYear;

  set isYearFive(bool value) {
    _isFifthYear = value;
    update();
  }

  bool get isPaid => _isPaid;

  set isPaid(bool value) {
    _isPaid = value;
    update();
  }

  bool get isFree => _isFree;

  set isFree(bool value) {
    _isFree = value;
    update();
  }

  // ---------------------- override Functions section ----------------------
  @override
  searchIcon() async {
    if (formKey.currentState!.validate()) {
      changeIsLoading();
      focusNode.unfocus();
      await getSearchCourseDataList(searchEditingController.text);
      recordSearchList = await getSearchRecordData.getSearchRecordData(16);
      searchEditingController.clear();

      changeIsLoading();
    }
  }

  changeIsLoading() {
    isLoading.value = !isLoading.value;
  }

  @override
  onSearchFieldTap() {
    Get.toNamed(AppRoutes.searchScreen);
  }

  @override
  clear() {
    isYearOne = false;
    isYearTow = false;
    isYearThree = false;
    isYearFour = false;
    isYearFive = false;
    isPaid = false;
    isFree = false;
    update();
  }

  @override
  getSearchDataList() async {
    isLoading.value = true;
    recordSearchList = await getSearchRecordData.getSearchRecordData(16);
    topSearchList = await getSearchRecordData.getTopSearchData();
    isLoading.value = false;
  }

  @override
  getSearchCourseDataList(String searchText) async {
    searchCourseList = await searchCourseData.getSearchCourseList(
      16,
      searchText,
      _isYearFirst,
      _isSecondYear,
      _isThirdYear,
      _isFourthYear,
      _isFifthYear,
      isFree,
      isPaid,
    );
  }

  @override
  deleteRecord(String text, int i) {
    deleteSearchRecordData.deleteSearchRecord(text);
    recordSearchList.removeAt(i);
    update();
  }

  @override
  onTextTap(String text) {
    searchEditingController.text = text;
    searchIcon();
  }

  @override
  changeShowRecentSearch(bool value) {
    showRecentSearch.value = value;
  }

  @override
  void onInit() async {
    super.onInit();
    await getSearchDataList();
    addListenerToKeyBoardStatus();
  }

  @override
  void onClose() {
    searchEditingController.dispose();
    super.onClose();
  }

  @override
  addListenerToKeyBoardStatus() {
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        changeShowRecentSearch(true);
      } else {
        changeShowRecentSearch(false);
      }
    });
  }
}
