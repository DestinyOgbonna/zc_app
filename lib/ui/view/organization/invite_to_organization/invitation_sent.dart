import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

<<<<<<< HEAD
import 'package:zurichat/ui/shared/long_button.dart';
import 'package:zurichat/ui/shared/shared.dart';
import 'package:zurichat/ui/shared/text_styles.dart';
import 'package:zurichat/ui/shared/ui_helpers.dart';
import 'package:zurichat/ui/shared/zuri_appbar.dart';
import 'package:zurichat/ui/view/organization/invite_to_organization/invite_via_email/invite_viewmodel.dart';
import 'package:zurichat/utilities/internalization/localization/app_localization.dart';
=======
import 'package:zurichat/ui/shared/dumb_widgets/long_button.dart';
import 'package:zurichat/ui/shared/shared.dart';
import 'package:zurichat/utilities/constants/text_styles.dart';
import 'package:zurichat/utilities/constants/ui_helpers.dart';
import 'package:zurichat/ui/shared/dumb_widgets/zuri_appbar.dart';
import 'package:zurichat/ui/view/organization/invite_to_organization/invite_via_email/invite_viewmodel.dart';
import 'package:zurichat/utilities/internationalization/app_localization.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6

import 'package:stacked/stacked.dart';

class InvitationSent extends StatelessWidget {
  const InvitationSent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final local = AppLocalization.of(context);
<<<<<<< HEAD
=======
    final bool _dark = Theme.of(context).brightness == Brightness.dark;
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
    return ViewModelBuilder<InviteViewModel>.reactive(
      viewModelBuilder: () => InviteViewModel(),
      builder: (BuildContext context, InviteViewModel model, Widget? children) {
        return Scaffold(
          appBar: ZuriAppBar(
<<<<<<< HEAD
            isDarkMode: Theme.of(context).brightness == Brightness.dark,
=======
            orgTitle: Text(
              local!.invitationSent,
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1!.color,
              ),
            ),
            isDarkMode: _dark,
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
            leading: Icons.close,
            leadingPress: () {
              model.navigateBack();
            },
            whiteBackground: true,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25.0,
              vertical: 24.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/svg_icons/invite.svg',
                  width: 64,
                  height: 64,
                ),
                UIHelper.verticalSpaceLarge,
                Text(
<<<<<<< HEAD

                  local!.invitationSent,
                  style: AppTextStyle.darkGreySize18Bold,

=======
                  local.invitationSent,
                  style: _dark
                      ? AppTextStyle.whiteSize18Bold
                      : AppTextStyle.darkGreySize18Bold,
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
                ),
                UIHelper.verticalSpaceLarge,
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.email_outlined,
                      ),
                      const SizedBox(width: 16),
                      Text(
                        model.getInvitedMail() ?? '',
<<<<<<< HEAD

                        style: AppTextStyle.darkGreySize16Bold,

=======
                        style: _dark
                            ? AppTextStyle.whiteSize16Bold
                            : AppTextStyle.darkGreySize16Bold,
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
                      ),
                    ],
                  ),
                ),
                UIHelper.verticalSpaceLarge,
                Center(
                  child: Text(
<<<<<<< HEAD

                    local.invitedAsAZuriChatMember,
                    style: AppTextStyle.darkGreySize16,
=======
                    local.invitedAsAZuriChatMember,
                    style: _dark
                        ? AppTextStyle.whiteSize16
                        : AppTextStyle.darkGreySize16,
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
                  ),

                  // textAlign: TextAlign.center,
                ),
                const Spacer(),
                LongButton(
                  onPressed: () {
                    model.navigateToHome();
                  },
<<<<<<< HEAD

                  label: local.done,

=======
                  label: local.done,
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
