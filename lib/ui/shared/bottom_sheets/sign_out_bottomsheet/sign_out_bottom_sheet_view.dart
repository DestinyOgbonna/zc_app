import 'package:flutter/material.dart';

import 'package:zurichat/models/organization_model.dart';
<<<<<<< HEAD
import 'package:zurichat/ui/shared/bottom_sheets/sign_out_bottomsheet/sign_out_botton_sheet_viewmodel.dart';
import 'package:zurichat/ui/shared/bottom_sheets/sign_out_bottomsheet/widgets/work_space_display_info_view.dart';
import 'package:zurichat/ui/shared/text_styles.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../colors.dart';
=======
import 'package:zurichat/ui/shared/bottom_sheets/sign_out_bottomsheet/sign_out_bottom_sheet_viewmodel.dart';
import 'package:zurichat/ui/shared/bottom_sheets/sign_out_bottomsheet/widgets/work_space_display_info_view.dart';
import 'package:zurichat/utilities/constants/text_styles.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../utilities/constants/colors.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6

class SignOutBottomSheet extends StatelessWidget {
  final SheetRequest request;
  final Function(SheetResponse) completer;

  const SignOutBottomSheet(
      {Key? key, required this.request, required this.completer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final OrganizationModel org = request.data;
    final bool _dark = Theme.of(context).brightness == Brightness.dark;
    return ViewModelBuilder<SignOutBottomSheetViewModel>.nonReactive(
        builder: (context, model, child) => Container(
              color: _dark ? AppColors.darkModeColor : AppColors.whiteColor,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  WorkSpaceDisplayInfo(
                    imageUrl: org.logoUrl,
                    workSpaceTitle: org.name,
                    workSpaceSlackUrl: org.organizationUrl,
                  ),
                  GestureDetector(
<<<<<<< HEAD
                    onTap: () {},
=======
                    onTap: () => model.navigateInviteMembers(),
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
                    child: ListTile(
                      title: Text(
                        'Invite members',
                        style: _dark
                            ? AppTextStyle.whiteSize16
                            : AppTextStyle.darkGreySize16,
                      ),
                      leading: Icon(
                        Icons.logout_sharp,
                        color:
                            _dark ? AppColors.whiteColor : AppColors.greyColor,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      model.navigateToWorkSpaceSettings(org);
                    },
                    child: ListTile(
                      title: Text(
                        'Organization settings',
                        style: _dark
                            ? AppTextStyle.whiteSize16
                            : AppTextStyle.darkGreySize16,
                      ),
                      leading: Icon(
                        Icons.settings,
                        color:
                            _dark ? AppColors.whiteColor : AppColors.greyColor,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      model.dismissDialog();
                      model.showSignOutDialog(org.name ?? "");
                    },
                    child: ListTile(
                      title: Text(
                        'Sign Out',
                        style: _dark
                            ? AppTextStyle.whiteSize16
                            : AppTextStyle.darkGreySize16,
                      ),
                      leading: const Icon(
                        Icons.logout_sharp,
                        color: AppColors.unreadMessageColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
        viewModelBuilder: () => SignOutBottomSheetViewModel());
  }
}
