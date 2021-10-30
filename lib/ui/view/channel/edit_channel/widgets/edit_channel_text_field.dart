import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:zurichat/ui/shared/colors.dart';
=======
import 'package:zurichat/utilities/constants/colors.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6

class TextBox extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final Function(String)? onChanged;

  const TextBox({
    Key? key,
    required this.hint,
    required this.controller,
    required this.onChanged,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 192,
      child: TextField(
        //maxLines: 9,
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          hintStyle: const TextStyle(color: AppColors.zuriDarkGrey),
          contentPadding: const EdgeInsets.fromLTRB(25.0, 16.0, 25.0, 16.0),
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }
}
