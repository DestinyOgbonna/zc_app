import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

<<<<<<< HEAD
import 'package:zurichat/ui/shared/text_styles.dart';
=======
import 'package:zurichat/utilities/constants/text_styles.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6

class NewRowTile extends StatelessWidget {
  const NewRowTile({
    Key? key,
    this.icon,
    this.text,
  }) : super(key: key);

  final IconData? icon;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Theme.of(context).textTheme.bodyText1!.color,
          size: 24.sp,
        ),
        SizedBox(width: 24.23.w),
        Text(
          "$text",
          style: AppTextStyle.darkGreySize14Bold.copyWith(
            color: Theme.of(context).textTheme.bodyText1!.color,
          ),
        ),
      ],
    );
  }
}
