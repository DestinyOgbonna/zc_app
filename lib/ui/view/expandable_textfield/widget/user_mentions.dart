<<<<<<< HEAD
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zurichat/models/channel_members.dart';
import 'package:zurichat/ui/shared/text_styles.dart';

class MyStatelessWidget extends StatelessWidget {
  final ChannelMembermodel membersList;
  const MyStatelessWidget({Key? key, required this.membersList})
=======
import 'package:flutter/material.dart';
import 'package:zurichat/utilities/constants/text_styles.dart';
import 'package:zurichat/utilities/extensions/string_extension.dart';

class UserMentions extends StatelessWidget {
  final String membersList;
  final String name;
  const UserMentions(
      {Key? key, required this.membersList, required this.name})
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.asset(
            'assets/images/chimamanda.png',
          ),
          const SizedBox(width: 16.0),
<<<<<<< HEAD
          Text(membersList.name, style: AppTextStyle.darkGreySize16Bold),
          const SizedBox(width: 16.0),
          Text('${membersList.isAdmin}', style: AppTextStyle.lightGreySize16)
=======
          Text(membersList.capitalize(),
              style: AppTextStyle.darkGreySize16Bold),
          const SizedBox(width: 16.0),
          Align(
              alignment: name == '-' ? Alignment.center : Alignment.centerLeft,
              child: Text(name, style: AppTextStyle.lightGreySize16))
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
        ],
      ),
    );
  }
}
