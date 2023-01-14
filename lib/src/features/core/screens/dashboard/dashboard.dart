import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/image_string.dart';
import 'package:login_flutter_app/src/features/core/screens/dashboard/widgets/appBar.dart';
import 'package:login_flutter_app/src/features/core/screens/dashboard/widgets/banner.dart';
import 'package:login_flutter_app/src/features/core/screens/dashboard/widgets/categories.dart';
import 'package:login_flutter_app/src/features/core/screens/dashboard/widgets/searchbar.dart';
import 'package:login_flutter_app/src/features/core/screens/dashboard/widgets/topcourse_card.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: DashboardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(mDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Headings
              Text(mDashboardTitle, style: txtTheme.bodyText1),
              Text(mDashboardHeading, style: txtTheme.headline2),
              const SizedBox(height: mDashboardPadding),

              // Search Bar
              searchbar(txtTheme: txtTheme),

              const SizedBox(height: mDashboardPadding),

              // Categories
              categories(txtTheme: txtTheme),

              const SizedBox(height: mDashboardPadding),

              // Banners
              banner(txtTheme: txtTheme),

              const SizedBox(height: mDashboardPadding),
              // TOP COURSES
              Text(mDashboardTopCourses,
                  style: txtTheme.headline2?.apply(fontSizeFactor: 1.1)),

              // Top Course Card
              top_course_card(txtTheme: txtTheme),
            ],
          ),
        ),
      ),
    );
  }
}








