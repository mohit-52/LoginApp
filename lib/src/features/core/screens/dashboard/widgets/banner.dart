import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/image_string.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class banner extends StatelessWidget {
  const banner({
    Key? key,
    required this.txtTheme,
  }) : super(key: key);

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: mCardBgColor),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Image(
                        image: AssetImage(mBookmarkImage),
                        height: 25,
                        width: 25,
                      ),
                    ),
                    Flexible(
                        child: Image(
                          image: AssetImage(mBannerImage1),
                          fit: BoxFit.fitHeight,
                        )),
                  ],
                ),
                const SizedBox(
                  height: mDashboardPadding - 15,
                ),
                Text(
                  mDashboardBannerTitle1,
                  style: txtTheme.headline3,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(mDashboardBannerSubTitle,
                    style: txtTheme.bodyText2,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: mCardBgColor),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Image(
                              image: AssetImage(mBookmarkImage),
                              height: 25,
                              width: 25,
                            ),
                          ),
                          Flexible(
                              child: Image(
                                image: AssetImage(mBannerImage2),
                                fit: BoxFit.fitHeight,
                              )),
                        ],
                      ),
                      Text(
                        mDashboardBannerTitle2,
                        style: txtTheme.headline6,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(mDashboardBannerSubTitle,
                          style: txtTheme.bodyText2,
                          overflow: TextOverflow.ellipsis),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text(mDashboardButton),
                  ),
                ),
              ],
            )),
      ],
    );
  }
}