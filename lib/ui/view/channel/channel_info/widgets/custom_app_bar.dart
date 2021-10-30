import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
<<<<<<< HEAD
import 'package:zurichat/constants/app_strings.dart';
import 'package:zurichat/ui/shared/colors.dart';

import 'package:zurichat/ui/shared/text_styles.dart';
=======
import 'package:zurichat/utilities/constants/app_strings.dart';
import 'package:zurichat/utilities/constants/colors.dart';

import 'package:zurichat/utilities/constants/text_styles.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6

Widget customAppBar(model) {
  return AppBar(
    leading: IconButton(
      icon: Icon(
        Icons.clear,
        size: 24.sp,
      ),
      onPressed: () => model.navigateBack(),
    ),
    actions: [
      Icon(
        Icons.star,
        color: AppColors.zuriPrimaryColor,
        size: 24.sp,
      )
    ],
    backgroundColor: Colors.white,
    title: Text(
      ChannelInfo,
      style: AppTextStyle.darkGreySize16Bold,
    ),
  );
}
