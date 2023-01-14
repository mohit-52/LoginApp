import 'package:login_flutter_app/src/constants/image_string.dart';

class DashboardTopcardModel {
  final String title;
  final String image;
  final String heading;
  final String subHeading;

  DashboardTopcardModel(this.title, this.image, this.heading, this.subHeading);

  static List<DashboardTopcardModel> list = [
    DashboardTopcardModel("JS Crash Course", mTopCourseImage1,"10 Section", "Web developement"),
    DashboardTopcardModel("F Crash Course", mTopCourseImage2,"11 Section", "App Developement"),
    DashboardTopcardModel("H Crash Course", mTopCourseImage3,"8 Section", "Website"),
    DashboardTopcardModel("K Crash Course", mTopCourseImage4,"12 Section", "OOPs"),
    DashboardTopcardModel("P Crash Course", mTopCourseImage5,"15 Section", "Machine Learning"),
  ];
}