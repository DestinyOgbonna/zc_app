import 'package:flutter/material.dart';

<<<<<<< HEAD
import '../../../text_styles.dart';
=======
import '../../../../../utilities/constants/text_styles.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6

class CustomProfileTile extends StatelessWidget {
  const CustomProfileTile(
      {Key? key, required this.title, required this.subtitle, this.onPressed})
      : super(key: key);
  final String title;
  final String subtitle;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    final bool _dark = Theme.of(context).brightness == Brightness.dark;

    return ListTile(
      visualDensity: const VisualDensity(horizontal: 0.0, vertical: 0),
      horizontalTitleGap: 0,
      dense: true,
      title: Padding(
        padding: const EdgeInsets.only(bottom: 3),
        child: Text(
          title,
          style: _dark ? AppTextStyle.whiteSize16 : AppTextStyle.darkGreySize16,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: _dark ? AppTextStyle.whiteSize16 : AppTextStyle.darkGreySize16,
      ),
      onTap: onPressed,
    );
  }
}
