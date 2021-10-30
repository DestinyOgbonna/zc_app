import 'package:flutter/material.dart';

<<<<<<< HEAD
import 'package:zurichat/ui/shared/colors.dart';
import 'package:zurichat/ui/shared/text_styles.dart';
=======
import 'package:zurichat/utilities/constants/colors.dart';
import 'package:zurichat/utilities/constants/text_styles.dart';
import 'package:zurichat/utilities/internationalization/app_localization.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6

class SavedItemBackground extends StatelessWidget {
  const SavedItemBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
=======
    final local = AppLocalization.of(context);
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
    final _size = MediaQuery.of(context).size;
    final bool _dark = Theme.of(context).brightness == Brightness.dark;

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            Icons.bookmark_border_outlined,
            size: _size.height * .3,
            color: AppColors.greyishColor,
          ),
          Text(
<<<<<<< HEAD
            'No saved items',
=======
            local!.noSavedItems,
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
            style:
                _dark ? AppTextStyle.whiteSize16 : AppTextStyle.darkGreySize16,
          ),
          const SizedBox(height: 10),
<<<<<<< HEAD
          const Text(
            'Add messages and files to easily \ncome back to them later.',
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.greyishColor, fontSize: 16),
=======
          Text(
            local.noSavedItemsSubtitle,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: const TextStyle(color: AppColors.greyishColor, fontSize: 16),
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
          ),
        ],
      ),
    );
  }
}
