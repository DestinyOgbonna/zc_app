import 'package:flutter/material.dart';

<<<<<<< HEAD
import '../../../../general_widgets/menu_item_tile.dart';
import '../../../shared/colors.dart';
=======
import '../../../shared/dumb_widgets/menu_item_tile.dart';
import '../../../../utilities/constants/colors.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6

class Status extends StatelessWidget {
  const Status(
      {Key? key,
      required this.status,
      required this.duration,
      required this.icon,
      this.onPressed})
      : super(key: key);
  final String status;
  final String duration;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: MenuItemTile(
        onPressed: onPressed,
        topBorder: false,
        icon: Icon(icon),
<<<<<<< HEAD
        text: Text.rich(TextSpan(
=======
        text: Text.rich(
          TextSpan(
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
            text: status,
            style: const TextStyle(fontWeight: FontWeight.bold),
            children: [
              TextSpan(
<<<<<<< HEAD
                  text: ' - $duration',
                  style: const TextStyle(color: AppColors.greyishColor))
            ])),
=======
                text: ' - $duration',
                style: const TextStyle(color: AppColors.greyishColor),
              )
            ],
          ),
        ),
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
      ),
    );
  }
}
