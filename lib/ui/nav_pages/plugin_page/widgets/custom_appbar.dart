import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD:lib/ui/nav_pages/plugin_page/widgets/custom_appbar.dart
import 'package:zurichat/ui/nav_pages/plugin_page/plugin_viewmodel.dart';
import 'package:zurichat/ui/shared/colors.dart';
=======
import 'package:zurichat/utilities/constants/app_strings.dart';

import 'package:zurichat/utilities/constants/text_styles.dart';
import '../edit_channel_view_model.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6:lib/ui/view/channel/edit_channel/widgets/edit_channel_appbar.dart

class CustomAppBars extends StatelessWidget implements PreferredSizeWidget {
  final String appbarTitle;
  final String appbarAction;
  final double appBarHeight;
  final EditChannelViewModel model;

  CustomAppBars(
      {Key? key,
      required this.appbarTitle,
      required this.appbarAction,
      this.appBarHeight = 56,
      required this.model})
      : preferredSize = Size.fromHeight(appBarHeight),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            appbarTitle,
<<<<<<< HEAD:lib/ui/nav_pages/plugin_page/widgets/custom_appbar.dart
            style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                color: AppColors.deepBlackColor),
=======
            style: AppTextStyle.header6,
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6:lib/ui/view/channel/edit_channel/widgets/edit_channel_appbar.dart
          ),
          GestureDetector(
            onTap: () {
              switch (appbarAction) {
<<<<<<< HEAD:lib/ui/nav_pages/plugin_page/widgets/custom_appbar.dart
                case 'Edit':
                  model.navigateToEdit();
                  break;
                case 'Done':
                  model.navigateToPlugins();
                  break;
                case 'Add':
                  model.navigateToPlugins();
              }
            },
            child: Text(
              appbarAction,
              style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                  color: AppColors.zuriPrimaryColor),
=======
                case Save:
                  model.editChannel();
                  break;
                case Done:
                  model.navigateBack();
                  //model.nToPlugins();
                  break;
                case Add:
                //model.nToPlugins();
              }
            },
            child: SizedBox(
              width: 60.0,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 8.0, 0, 8.0),
                child: Text(
                  appbarAction,
                  textAlign: TextAlign.end,
                  style: AppTextStyle.greenSize16,
                ),
              ),
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6:lib/ui/view/channel/edit_channel/widgets/edit_channel_appbar.dart
            ),
          ),
        ],
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: SizedBox(
            height: 16.0,
            width: 16.0,
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios, size: 16.0),
              onPressed: () {
                if (appbarAction == 'Edit') {
<<<<<<< HEAD:lib/ui/nav_pages/plugin_page/widgets/custom_appbar.dart
                  model.navigateToHome();
=======
                  model.nToChannelInfo();
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6:lib/ui/view/channel/edit_channel/widgets/edit_channel_appbar.dart
                } else {
                  model.navigateBack();
                }
              },
            )),
      ),
      leadingWidth: 40,
      elevation: 1.0,
    );
  }
}
