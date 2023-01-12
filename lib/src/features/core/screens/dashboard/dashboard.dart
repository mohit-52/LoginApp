import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/image_string.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: mDarkColor,
        ),
        title: Text(
          mAppName,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: mCardBgColor),
            child: IconButton(
              onPressed: () {},
              icon: const Image(
                image: AssetImage(mUserProfileImage),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(right: 10, top: 20),
          padding: const EdgeInsets.all(mDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                mDashboardTitle,
                style: txtTheme.subtitle1,
              ),
              Text(
                mDashboardHeading,
                style: txtTheme.headline2,
              ),
              const SizedBox(
                height: mDashboardPadding,
              ),

              // SEARCH BAR
              Container(
                decoration:
                    BoxDecoration(border: Border(left: BorderSide(width: 4))),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      mDashboardSearch,
                      style: txtTheme.headline2
                          ?.apply(color: Colors.grey.withOpacity(0.5)),
                    ),
                    Icon(
                      Icons.mic,
                      size: 25,
                    )
                  ],
                ),
              ),

              // CATEGORIES
              // SizedBox(
              //   height: 45,
              //   child: ListView.builder(
              //     itemCount: list.length,
              //     shrinkWrap: true,
              //     scrollDirection: Axis.horizontal,
              //     itemBuilder: (context, index) => GestureDetector(
              //       onTap: list[index].onPress,
              //       child: SizedBox(
              //         width: 170,
              //         height: 45,
              //         child: Row(
              //           children: [
              //             Container(
              //               width: 45,
              //               height: 45,
              //               decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: mDarkColor),
              //               child: Center(
              //                 child: Text(list[index].title, style: txtTheme.headline6?.apply(color: Colors.white)),
              //               ),
              //             ),
              //             const SizedBox(width: 5),
              //             Flexible(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 mainAxisAlignment: MainAxisAlignment.center,
              //                 children: [
              //                   Text(list[index].heading, style: txtTheme.headline6, overflow: TextOverflow.ellipsis),
              //                   Text(list[index].subHeading, style: txtTheme.bodyText2, overflow: TextOverflow.ellipsis)
              //                 ],
              //               ),
              //             )
              //           ],
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
