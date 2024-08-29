import 'package:elearnnig/core/constent/routes.dart';
import 'package:elearnnig/core/enums/view_all_type.dart';
import 'package:elearnnig/data/data_source/dynamic/course/course_data.dart';
import 'package:elearnnig/data/data_source/dynamic/get_student_feedback.dart';
import 'package:elearnnig/data/data_source/dynamic/student/get_student_name_and_image.dart';
import 'package:elearnnig/data/data_source/dynamic/student/get_top_4_instructors_by_colleague.dart';
import 'package:elearnnig/data/model/home/feedback_model.dart';
import 'package:elearnnig/data/model/student/student_model.dart';
import 'package:elearnnig/data/model/student/teacher_model.dart';
import 'package:get/get.dart';
import '../../data/data_source/dynamic/course/get_recommended_course.dart';
import '../../data/data_source/dynamic/course/get_trending_course.dart';
import '../../data/model/course_model.dart';

abstract class HomePageController extends GetxController {
  getAllMyCourseList();

  getStudentData();

  getTrendingCourseData();

  getRecommendedCourseData();

  getTop4InstructorsByColleague();

  getStudentFeedback();

  settingIcon();

  bellIcon();

  profileIcon();

  filterIcon();

  viewAll(ViewAllType viewAllType);

  addToBookMarks(CourseModel course);
}

class HomePageControllerImp extends HomePageController {
  // define isLoading var for shimmer effect
  final RxBool isLoading = true.obs;
  // Define All List to store Data
  late List<CourseModel> myCourseList;
  late List<StudentModel> student;
  late List<TeacherModel> instructorList;
  late List<CourseModel> trendingCourseList;
  late List<CourseModel> recommendedCourseList;
  late List<FeedbackModel> feedbackList;

  // Define All Data Classes
  CourseData courseData = CourseData();
  GetStudentNameAndImage studentData = GetStudentNameAndImage();
  GetTrendingCourse trendingCourseData = GetTrendingCourse();
  GetRecommendedCourse recommendedCourseData = GetRecommendedCourse();
  GetTop4InstructorsByColleague instructorData =
      GetTop4InstructorsByColleague();
  GetStudentFeedback feedbackData = GetStudentFeedback();

  // Override for all function to get Data from Server
  @override
  getAllMyCourseList() async {
    myCourseList = await courseData.getMyCourseList(16);
  }

  @override
  getStudentData() async {
    student = await studentData.getStudentNameAndImage(16);
  }

  @override
  getTrendingCourseData() async {
    trendingCourseList = await trendingCourseData.getTrendingCourse(16, 1);
  }

  @override
  getRecommendedCourseData() async {
    recommendedCourseList =
        await recommendedCourseData.getRecommendedCourse(16, 1);
  }

  @override
  getTop4InstructorsByColleague() async {
    instructorList = await instructorData.getTop4InstructorsByColleague(1);
  }

  @override
  getStudentFeedback() async {
    feedbackList = await feedbackData.getStudentFeedback();
  }

  @override
  void onInit() async {
    isLoading.value = true;
    await getAllMyCourseList();
    await getStudentData();
    await getTrendingCourseData();
    await getRecommendedCourseData();
    await getTop4InstructorsByColleague();
    await getStudentFeedback();
    super.onInit();
    isLoading.value = false;
  }

  // ------------------  logic for HomeScreen  -------------------

  @override
  bellIcon() {
    Get.toNamed(AppRoutes.notificationScreen);
  }

  @override
  profileIcon() {
    Get.toNamed(AppRoutes.profileScreen);
  }

  @override
  settingIcon() {
    Get.toNamed(AppRoutes.settingScreen);
  }

  @override
  filterIcon() {
    Get.toNamed(AppRoutes.filterScreen);
  }

  @override
  viewAll(ViewAllType viewAllType) {}

  @override
  addToBookMarks(CourseModel course) {
    course.isFavorite?.value = !course.isFavorite!.value;
  }
}
