import 'package:flutter/material.dart';

import '../../../../../constants/text_strings.dart';
class searchbar extends StatelessWidget {
  const searchbar({
    Key? key,
    required this.txtTheme,
  }) : super(key: key);

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: const BoxDecoration(
          border: Border(
            left: BorderSide(width: 5),
          )),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          mDashboardSearch,
          style: txtTheme.headline4?.apply(color: Colors.grey.withOpacity(0.5)),
        ),
        Icon(
          Icons.mic,
          size: 25,
        )
      ]),
    );
  }
}