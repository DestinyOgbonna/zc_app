import 'package:flutter/material.dart';
<<<<<<< HEAD:lib/ui/view/channel/channel_search/widgets/app_bar_main.dart
import 'package:zurichat/constants/app_strings.dart';
=======
import 'package:zurichat/utilities/constants/app_strings.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6:lib/ui/view/channel/channel_search/widgets/appBar.dart

import 'textfield_style.dart';

Widget appBarMain() {
  return AppBar(
    actions: [
      GestureDetector(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 19),
          child: Text(
            Done,
            style: greenTextStyle(),
          ),
        ),
      )
    ],
    backgroundColor: Colors.white,
    title: Text(
      TeamSocrates,
      style: headerStyle(),
    ),
  );
}
