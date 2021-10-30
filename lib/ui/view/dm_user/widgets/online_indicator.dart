import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:zurichat/ui/shared/colors.dart';
=======
import 'package:zurichat/utilities/constants/colors.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6

class OnlineIndicator extends StatelessWidget {
  const OnlineIndicator(int i, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(5.0),
      child: Icon(
        Icons.circle,
        color: AppColors.zuriPrimaryColor,
        size: 8,
      ),
    );
  }
}
