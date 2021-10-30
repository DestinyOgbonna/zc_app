import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:zurichat/constants/app_strings.dart';

import 'package:zurichat/ui/shared/text_styles.dart';
=======
import 'package:zurichat/utilities/constants/app_strings.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6

import 'package:zurichat/utilities/constants/text_styles.dart';

import '../../../../utilities/constants/app_constants.dart';

class ZuriLogo extends StatelessWidget {
  const ZuriLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {    return Row(
      children: [
        const Image(
          image: appBarLogo,
          fit: BoxFit.cover,
          height: 30,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(zuri, style: AppTextStyle.zuriAppBarWordLogo),
      ],
    );
  }
}
