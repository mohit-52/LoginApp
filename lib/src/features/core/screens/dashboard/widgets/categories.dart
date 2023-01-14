import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/sizes.dart';
import '../../../models/dashboard/categories_model.dart';

class categories extends StatelessWidget {
  const categories({
    Key? key,
    required this.txtTheme,
  }) : super(key: key);

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    final list = DashboardCategoriesModel.list;
    return SizedBox(
      height: 45,
      child: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: list[index].onPress,
          child: SizedBox(
            width: 170,
            height: 50,
            child: Row(
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: mDarkColor),
                  child: Center(
                    child: Text(list[index].title,
                        style: txtTheme.headline6?.apply(color: Colors.white)),
                  ),
                ),
                const SizedBox(
                  width: mDashboardPadding - 10,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(list[index].heading,
                          style: txtTheme.headline6,
                          overflow: TextOverflow.ellipsis),
                      Text(list[index].subHeading,
                          style: txtTheme.bodyText2,
                          overflow: TextOverflow.ellipsis),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        // children: [
        //   SizedBox(
        //     width: 170,
        //     height: 50,
        //     child: Row(
        //       children: [
        //         Container(
        //           width: 45,
        //           height: 45,
        //           decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(10),
        //               color: mDarkColor),
        //           child: Center(
        //             child: Text(
        //               "JS",
        //               style: txtTheme.headline6?.apply(color: Colors.white),
        //             ),
        //           ),
        //         ),
        //         const SizedBox(
        //           width: mDashboardPadding - 10,
        //         ),
        //         Flexible(
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [
        //               Text(
        //                 'Java Script',
        //                 style: txtTheme.headline6,
        //                 overflow: TextOverflow.ellipsis,
        //               ),
        //               Text(
        //                 '10 Lessons',
        //                 style: txtTheme.bodyText2,
        //                 overflow: TextOverflow.ellipsis,
        //               ),
        //             ],
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        //   SizedBox(
        //     width: 170,
        //     height: 50,
        //     child: Row(
        //       children: [
        //         Container(
        //           width: 45,
        //           height: 45,
        //           decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(10),
        //               color: mDarkColor),
        //           child: Center(
        //             child: Text(
        //               "JS",
        //               style: txtTheme.headline6?.apply(color: Colors.white),
        //             ),
        //           ),
        //         ),
        //         const SizedBox(
        //           width: mDashboardPadding - 10,
        //         ),
        //         Flexible(
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [
        //               Text(
        //                 'Java Script',
        //                 style: txtTheme.headline6,
        //                 overflow: TextOverflow.ellipsis,
        //               ),
        //               Text(
        //                 '10 Lessons',
        //                 style: txtTheme.bodyText2,
        //                 overflow: TextOverflow.ellipsis,
        //               ),
        //             ],
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        //   SizedBox(
        //     width: 170,
        //     height: 50,
        //     child: Row(
        //       children: [
        //         Container(
        //           width: 45,
        //           height: 45,
        //           decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(10),
        //               color: mDarkColor),
        //           child: Center(
        //             child: Text(
        //               "JS",
        //               style: txtTheme.headline6?.apply(color: Colors.white),
        //             ),
        //           ),
        //         ),
        //         const SizedBox(
        //           width: mDashboardPadding - 10,
        //         ),
        //         Flexible(
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [
        //               Text(
        //                 'Java Script',
        //                 style: txtTheme.headline6,
        //                 overflow: TextOverflow.ellipsis,
        //               ),
        //               Text(
        //                 '10 Lessons',
        //                 style: txtTheme.bodyText2,
        //                 overflow: TextOverflow.ellipsis,
        //               ),
        //             ],
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        // ],
      ),
    );
  }
}
