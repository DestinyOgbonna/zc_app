import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:zurichat/ui/shared/colors.dart';
=======
import 'package:zurichat/utilities/constants/colors.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.greyishColor, width: 0.5),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.greyishColor, width: 1),
        ),
      ),
    );
  }
}
