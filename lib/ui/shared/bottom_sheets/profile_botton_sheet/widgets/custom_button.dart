import 'package:flutter/material.dart';

<<<<<<< HEAD:lib/ui/shared/bottom_sheets/profile_botton_sheet/widgets/custom_button.dart
import '../../../colors.dart';
=======
import '../../../../../utilities/constants/colors.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6:lib/ui/shared/bottom_sheets/widgets/custom_button.dart

enum _CustomButtonType { normal, icon }

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key, required this.text, required this.onPressed, this.icon})
      : _customButtonType = _CustomButtonType.normal,
        super(key: key);

  const CustomButton.icon(
      {Key? key, this.text, required this.onPressed, required this.icon})
      : _customButtonType = _CustomButtonType.icon,
        super(key: key);

  final String? text;
  final IconData? icon;
  final void Function() onPressed;
  final _CustomButtonType _customButtonType;

  @override
  Widget build(BuildContext context) {
    return _customButtonType == _CustomButtonType.normal
        ? MaterialButton(
            onPressed: onPressed,
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.02),
            shape: Border.all(color: AppColors.greyishColor),
            child: Text(
              " $text",
              style: const TextStyle(color: AppColors.greyishColor),
            ))
        : MaterialButton(
            onPressed: onPressed,
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.015),
            shape: Border.all(color: AppColors.greyishColor),
            child: Icon(
              icon,
              color: AppColors.greyishColor,
            ),
          );
  }
}