import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:zurichat/constants/app_strings.dart';
import 'package:zurichat/general_widgets/unread_count.dart';
import 'package:zurichat/ui/shared/text_styles.dart';
=======
import 'package:zurichat/utilities/constants/app_strings.dart';
import 'package:zurichat/ui/shared/dumb_widgets/unread_count.dart';
import 'package:zurichat/utilities/constants/text_styles.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6

class CustomChannelListTile extends StatelessWidget {
  final String channelName;
  final Function()? pressed;
  final bool isActive;
  final String? data;

  const CustomChannelListTile({
    Key? key,
    this.channelName = '',
    this.pressed,
    this.data,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        hash + '   ' + channelName,
        style: isActive
            ? AppTextStyle.darkGreySize12
            : AppTextStyle.darkGreySize12,
      ),
      isActive ? UnreadCount(count: int.parse(data!)) : Container()
    ]);
  }
}
