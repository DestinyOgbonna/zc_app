import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
<<<<<<< HEAD
import 'package:zurichat/constants/app_strings.dart';
import 'package:zurichat/ui/shared/colors.dart';
import 'package:zurichat/ui/shared/text_styles.dart';
import 'package:zurichat/ui/shared/zuri_appbar.dart';
import 'package:zurichat/utilities/internalization/localization/app_localization.dart';
import 'package:stacked/stacked.dart';
import '../../../general_widgets/menu_item_tile.dart';
=======
import 'package:zurichat/utilities/constants/app_strings.dart';
import 'package:zurichat/utilities/constants/colors.dart';
import 'package:zurichat/utilities/constants/text_styles.dart';
import 'package:zurichat/ui/shared/dumb_widgets/zuri_appbar.dart';
import 'package:zurichat/utilities/internationalization/app_localization.dart';
import 'package:stacked/stacked.dart';
import '../../shared/dumb_widgets/menu_item_tile.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
import 'widgets/profile_page_head.dart';
import 'widgets/status_form.dart';
import 'you_page_viewmodel.dart';

class YouPage extends StatelessWidget {
  const YouPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final local = AppLocalization.of(context);
    final bool _dark = Theme.of(context).brightness == Brightness.dark;
    TextStyle _tileStyle =
        _dark ? AppTextStyle.whiteSize16 : AppTextStyle.darkGreySize16;
    Color _menuColor = _dark ? AppColors.whiteColor : AppColors.darkGreyColor;
    return ViewModelBuilder<YouPageViewModel>.reactive(
      viewModelBuilder: () => YouPageViewModel(),
      onModelReady: (model) {
        model.fetchStatus();
<<<<<<< HEAD
        model.getUserPresence();
=======
        model.getUserPresence(active: local!.active, away: local.away);
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
      },
      builder: (context, model, child) => Scaffold(
        appBar: ZuriAppBar(
          isDarkMode: _dark,
          orgTitle: Text(You, style: AppTextStyle.organizationNameText),
          bottomNavBarScreen: true,
          leadingWidth: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: model.editProfile,
                  child: ProfilePageHead(
                    isActive: model.currentStatus == 'Active',
                    name: model.username,
                    currentStatus: model.currentStatus,
                    image: model.profileImage,
                  ),
                ),
                const SizedBox(height: 30),
                StatusForm(
                  onPressed: model.setStatus,
<<<<<<< HEAD
                  statusText: model.statusText,
=======
                  statusText: local!.statusHint,
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
                  tagIcon: model.tagIcon,
                  clearOnPressed: model.clearStatus,
                  // iconData: model.tag,
                ),
                const SizedBox(height: 20),
                // MenuItemTile(
                //   icon: SvgPicture.asset(
                //     PauseNotification,
                //     color: _menuColor,
                //     width: 18,
                //     height: 18,
                //   ),
                //   text: Text(
                //     local!.pauseNotifications,
                //     style: _tileStyle,
                //   ),
                //   onPressed: model.pauseNotifications,
                //   topBorder: false,
                // ),
                // const SizedBox(height: 16),
                MenuItemTile(
                  topBorder: false,
                  text: Text.rich(
                    TextSpan(
<<<<<<< HEAD
                      text: local!.setStatusText,
=======
                      text: local.setStatusText,
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
                      style: _tileStyle,
                      children: [
                        TextSpan(
                          text: model.otherStatus,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  icon: SvgPicture.asset(
                    away,
                    color: _menuColor,
                    width: 18,
                    height: 18,
                  ),
                  onPressed: model.toggleStatus,
                ),
                const SizedBox(height: 16),
                MenuItemTile(
                  icon: SvgPicture.asset(
                    Saved_Items,
                    color: _menuColor,
                    width: 18,
                    height: 18,
                  ),
                  text: Text(
                    local.savedItems,
                    style: _tileStyle,
                  ),
                  onPressed: model.viewSavedItem,
                ),
                const SizedBox(height: 16),
                MenuItemTile(
                  icon: SvgPicture.asset(
                    View_Profile,
                    color: _menuColor,
                    width: 18,
                    height: 18,
                  ),
                  text: Text(
                    local.viewProfile,
                    style: _tileStyle,
                  ),
                  onPressed: model.viewProfile,
                  topBorder: false,
                ),
                const SizedBox(height: 16),
                //TODO
                // MenuItemTile(
                //   icon: SvgPicture.asset(
                //     notification,
                //     color: _menuColor,
                //     width: 18,
                //     height: 18,
                //   ),
                //   text: Text(
                //     local.notifications,
                //     style: _tileStyle,
                //   ),
                //   onPressed: model.viewNotifications,
                //   topBorder: false,
                // ),
                // const SizedBox(height: 16),
                MenuItemTile(
                  icon: SvgPicture.asset(
                    preference,
                    color: _menuColor,
                    width: 18,
                    height: 18,
                  ),
                  text: Text(
                    local.preferences,
                    style: _tileStyle,
                  ),
                  onPressed: model.viewPreferences,
                  topBorder: false,
                ),
                const SizedBox(height: 16),
                MenuItemTile(
                  icon: SvgPicture.asset(
                    Log_Out,
                    color: _menuColor,
                    width: 18,
                    height: 18,
                  ),
                  text: Text(
                    local.signOut,
                    style: _tileStyle,
                  ),
                  onPressed: model.signOutAccount,
                  topBorder: false,
                ),
                const SizedBox(height: 10)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
