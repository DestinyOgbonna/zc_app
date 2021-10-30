import 'package:flutter/material.dart';
<<<<<<< HEAD:lib/ui/shared/bottom_sheets/profile_botton_sheet/widgets/custom_profile_tile.dart
import 'package:zurichat/ui/shared/text_styles.dart';
=======
import 'package:zurichat/utilities/constants/text_styles.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6:lib/ui/shared/bottom_sheets/widgets/custom_profile_tile.dart

class CustomProfileTile extends StatelessWidget {
  const CustomProfileTile(
      {Key? key, required this.title, required this.subtitle, this.onPressed})
      : super(key: key);
  final String title;
  final String subtitle;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: AppTextStyle.darkGreySize16,
      ),
      subtitle: Text(
        subtitle,
        style: AppTextStyle.darkGreySize16,
      ),
      onTap: onPressed,
    );
  }
}
