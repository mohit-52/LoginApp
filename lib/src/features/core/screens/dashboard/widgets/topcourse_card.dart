import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/image_string.dart';
import '../../../../../constants/sizes.dart';
import '../../../models/dashboard/topcard_model.dart';

class top_course_card extends StatelessWidget {
  const top_course_card({
    Key? key,
    required this.txtTheme,
  }) : super(key: key);

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    final list = DashboardTopcardModel.list;
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => SizedBox(
          width: 320,
          height: 200,
          child: Padding(
            padding: const EdgeInsets.only(right: 10, top: 5),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: mCardBgColor,
              ),
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          list[index].title,
                          style: txtTheme.bodyText1,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Flexible(
                        child:  Image(
                          image: AssetImage(list[index].image,),
                          height: 100,
                          width: 150,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder()),
                          onPressed: () {},
                          child: Icon(Icons.play_arrow)),
                      const SizedBox(
                        height: mDashboardPadding,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            list[index].heading,
                            style: txtTheme.bodyText1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            list[index].subHeading,
                            style: txtTheme.bodyText2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        // children: [
        //   SizedBox(
        //     width: 320,
        //     height: 200,
        //     child: Padding(
        //       padding: const EdgeInsets.only(right: 10, top: 5),
        //       child: Container(
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(12),
        //           color: mCardBgColor,
        //         ),
        //         padding: EdgeInsets.all(10),
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //               children: [
        //                 Flexible(
        //                   child: Text(
        //                     "Flutter Crash Course",
        //                     style: txtTheme.bodyText1,
        //                     maxLines: 2,
        //                     overflow: TextOverflow.ellipsis,
        //                   ),
        //                 ),
        //                 Flexible(
        //                   child:  Image(
        //                     image: AssetImage(mTopCourseImage1),
        //                     height: 100,
        //                     width: 150,
        //                   ),
        //                 )
        //               ],
        //             ),
        //             Row(
        //               children: [
        //                 ElevatedButton(
        //                     style: ElevatedButton.styleFrom(
        //                         shape: const CircleBorder()),
        //                     onPressed: () {},
        //                     child: Icon(Icons.play_arrow)),
        //                 const SizedBox(
        //                   height: mDashboardPadding,
        //                 ),
        //                 Column(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: [
        //                     Text(
        //                       "3 Sections",
        //                       style: txtTheme.bodyText1,
        //                       overflow: TextOverflow.ellipsis,
        //                     ),
        //                     Text(
        //                       "Programming Languages",
        //                       style: txtTheme.bodyText2,
        //                       overflow: TextOverflow.ellipsis,
        //                     ),
        //                   ],
        //                 )
        //               ],
        //             )
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),
        //   SizedBox(
        //     width: 320,
        //     height: 200,
        //     child: Padding(
        //       padding: const EdgeInsets.only(right: 10, top: 5),
        //       child: Container(
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(12),
        //           color: mCardBgColor,
        //         ),
        //         padding: EdgeInsets.all(10),
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //               children: [
        //                 Flexible(
        //                   child: Text(
        //                     "Flutter Crash Course",
        //                     style: txtTheme.bodyText1,
        //                     maxLines: 2,
        //                     overflow: TextOverflow.ellipsis,
        //                   ),
        //                 ),
        //                 Flexible(
        //                   child: const Image(
        //                     image: AssetImage(mTopCourseImage1),
        //                     height: 100,
        //                     width: 150,
        //                   ),
        //                 )
        //               ],
        //             ),
        //             Row(
        //               children: [
        //                 ElevatedButton(
        //                     style: ElevatedButton.styleFrom(
        //                         shape: const CircleBorder()),
        //                     onPressed: () {},
        //                     child: Icon(Icons.play_arrow)),
        //                 const SizedBox(
        //                   height: mDashboardPadding,
        //                 ),
        //                 Column(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: [
        //                     Text(
        //                       "3 Sections",
        //                       style: txtTheme.bodyText1,
        //                       overflow: TextOverflow.ellipsis,
        //                     ),
        //                     Text(
        //                       "Programming Languages",
        //                       style: txtTheme.bodyText2,
        //                       overflow: TextOverflow.ellipsis,
        //                     ),
        //                   ],
        //                 )
        //               ],
        //             )
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),
        //   SizedBox(
        //     width: 320,
        //     height: 200,
        //     child: Padding(
        //       padding: const EdgeInsets.only(right: 10, top: 5),
        //       child: Container(
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(12),
        //           color: mCardBgColor,
        //         ),
        //         padding: EdgeInsets.all(10),
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //               children: [
        //                 Flexible(
        //                   child: Text(
        //                     "Flutter Crash Course",
        //                     style: txtTheme.bodyText1,
        //                     maxLines: 2,
        //                     overflow: TextOverflow.ellipsis,
        //                   ),
        //                 ),
        //                 Flexible(
        //                   child: const Image(
        //                     image: AssetImage(mTopCourseImage1),
        //                     height: 100,
        //                     width: 150,
        //                   ),
        //                 )
        //               ],
        //             ),
        //             Row(
        //               children: [
        //                 ElevatedButton(
        //                     style: ElevatedButton.styleFrom(
        //                         shape: const CircleBorder()),
        //                     onPressed: () {},
        //                     child: Icon(Icons.play_arrow)),
        //                 const SizedBox(
        //                   height: mDashboardPadding,
        //                 ),
        //                 Column(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: [
        //                     Text(
        //                       "3 Sections",
        //                       style: txtTheme.bodyText1,
        //                       overflow: TextOverflow.ellipsis,
        //                     ),
        //                     Text(
        //                       "Programming Languages",
        //                       style: txtTheme.bodyText2,
        //                       overflow: TextOverflow.ellipsis,
        //                     ),
        //                   ],
        //                 )
        //               ],
        //             )
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),
        // ],
      ),
    );
  }
}