import 'package:flutter/material.dart';
import 'package:zurichat/models/user_model.dart';

<<<<<<< HEAD
import 'package:zurichat/ui/shared/text_styles.dart';
import 'package:zurichat/ui/shared/zuri_appbar.dart';
import 'package:zurichat/ui/shared/zuri_loader.dart';
import 'package:zurichat/utilities/internalization/localization/app_localization.dart';
=======
import 'package:zurichat/utilities/constants/text_styles.dart';
import 'package:zurichat/ui/shared/dumb_widgets/zuri_appbar.dart';
import 'package:zurichat/ui/shared/dumb_widgets/zuri_loader.dart';
import 'package:zurichat/utilities/internationalization/app_localization.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6

import 'package:stacked/stacked.dart';

import 'edit_profile_viewmodel.dart';
import 'widget/edit_profile_body.dart';

class EditProfileView extends StatelessWidget {
  final UserModel user;
  const EditProfileView({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final local = AppLocalization.of(context);
    Size _size = MediaQuery.of(context).size;
    return ViewModelBuilder<EditProfileViewModel>.reactive(
      viewModelBuilder: () => EditProfileViewModel(),
      onModelReady: (model) => model.onInit(user),
      builder: (context, viewModel, child) => Scaffold(
        appBar: ZuriAppBar(
          leading: Icons.close_rounded,
          leadingPress: () => viewModel.close(),
          orgTitle: Text(
            local!.editProfileButton,
            style: AppTextStyle.darkGreySize18Bold.copyWith(
              color: Theme.of(context).textTheme.bodyText1!.color,
            ),
          ),
          actions: [
            TextButton(
              onPressed: viewModel.onSave,
              child: Text(
                local.save,
                style: AppTextStyle.greenSize16,
              ),
            )
          ],
          isDarkMode: Theme.of(context).brightness == Brightness.dark,
          whiteBackground: true,
        ),
        body: Visibility(
          visible: !viewModel.isBusy,
<<<<<<< HEAD
          child: Body(size: _size),
=======
          child: EditProfileBody(size: _size),
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
          replacement: const ZuriLoader(),
        ),
      ),
    );
  }
}
