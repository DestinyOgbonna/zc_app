import 'package:flutter/material.dart';

<<<<<<< HEAD
import '../../../colors.dart';
=======
import '../../../../../utilities/constants/colors.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6

class RecentEmojis extends StatelessWidget {
  const RecentEmojis(this.text, {Key? key}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      child: Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style: const TextStyle(fontSize: 25),
          )),
<<<<<<< HEAD
      decoration:const  BoxDecoration(
=======
      decoration: const BoxDecoration(
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
        shape: BoxShape.circle,
        color: AppColors.greyBackgroundColor,
      ),
    );
  }
}
