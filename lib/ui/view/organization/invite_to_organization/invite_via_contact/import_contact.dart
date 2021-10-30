import 'package:flutter/material.dart';

<<<<<<< HEAD
import 'package:zurichat/ui/nav_pages/plugin_page/widgets/custom_search_field.dart';
import 'package:zurichat/ui/shared/text_styles.dart';
import 'package:zurichat/ui/shared/zuri_appbar.dart';
import 'package:zurichat/utilities/internalization/localization/app_localization.dart';
=======
import 'package:zurichat/utilities/constants/text_styles.dart';
import 'package:zurichat/ui/shared/dumb_widgets/zuri_appbar.dart';
import 'package:zurichat/utilities/internationalization/app_localization.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6

import 'package:stacked/stacked.dart';

import '../invite_via_email/invite_viewmodel.dart';

class ImportContacts extends StatelessWidget {
  const ImportContacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD

=======
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
    final local = AppLocalization.of(context);

    return ViewModelBuilder<InviteViewModel>.reactive(
      viewModelBuilder: () => InviteViewModel(),
      builder: (BuildContext context, InviteViewModel model, Widget? children) {
        return Scaffold(
          appBar: ZuriAppBar(
<<<<<<< HEAD

            isDarkMode: Theme.of(context).brightness == Brightness.dark,

=======
            isDarkMode: Theme.of(context).brightness == Brightness.dark,
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
            leading: Icons.close,
            leadingPress: () {
              model.navigateBack();
            },
            whiteBackground: true,
            orgTitle: Text(
<<<<<<< HEAD

=======
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
              local!.chooseContacts,
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1!.color,
              ),
<<<<<<< HEAD

=======
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 16.0, 20.0, 0.0),
                child: InkWell(
                    child: Text(
                      "Add",
<<<<<<< HEAD

                      style: AppTextStyle.greenSize16,

=======
                      style: AppTextStyle.greenSize16,
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
                    ),
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      model.navigateToInvitationSent();
                    }),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 24.0),
            child: ListView(
              children: [
                const SizedBox(
<<<<<<< HEAD
                  height: 40.0,
                  child: CustomSearchField(
                    searchHint: 'Select or type an email address',
                  ),
                ),
=======
                    height: 40.0,
                    child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Select or type an email address'))),
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
                const SizedBox(
                  height: 40.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    child: Image.asset("assets/images/avatar.png"),
                  ),
                  title: const Text("BrodaDemi"),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    child: Image.asset("assets/images/avatar.png"),
                  ),
                  title: const Text("BrodaDemi"),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    child: Image.asset("assets/images/avatar.png"),
                  ),
                  title: const Text("BrodaDemi"),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    child: Image.asset("assets/images/avatar.png"),
                  ),
                  title: const Text("BrodaDemi"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
