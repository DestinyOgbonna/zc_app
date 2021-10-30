import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:zurichat/general_widgets/easy_container.dart';
import 'package:zurichat/ui/nav_pages/home_page/home_page_viewmodel.dart';
import 'package:zurichat/ui/nav_pages/home_page/widgets/home_expanded.dart';
import 'package:zurichat/ui/nav_pages/home_page/widgets/home_list_items.dart';
import 'package:zurichat/ui/shared/colors.dart';
import 'package:zurichat/ui/shared/text_styles.dart';
import 'package:zurichat/ui/shared/zuri_appbar.dart';
import 'package:zurichat/utilities/constants.dart';
import 'package:zurichat/utilities/internalization/localization/app_localization.dart';
=======
import 'package:zurichat/ui/nav_pages/home_page/home_page_viewmodel.dart';
import 'package:zurichat/ui/nav_pages/home_page/widgets/home_expanded.dart';
import 'package:zurichat/ui/nav_pages/home_page/widgets/home_list_items.dart';
import 'package:zurichat/utilities/constants/colors.dart';
import 'package:zurichat/utilities/constants/text_styles.dart';
import 'package:zurichat/ui/shared/dumb_widgets/zuri_appbar.dart';
import 'package:zurichat/utilities/constants/app_constants.dart';
import 'package:zurichat/utilities/internationalization/app_localization.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
import 'package:stacked/stacked.dart';

import 'widgets/home_list_items.dart';

class HomePage extends StatelessWidget {
  final Widget? organizationLogo;
  const HomePage({Key? key, this.organizationLogo}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final bool _dark = Theme.of(context).brightness == Brightness.dark;
    return ViewModelBuilder<HomePageViewModel>.reactive(
      onModelReady: (model) {
        model.getDmAndChannelsList();
        model.getNewChannelStream();
        model.hasDrafts();
        model.listenToNotificationTap();
        model.getUserInfo();
      },
      viewModelBuilder: () => HomePageViewModel(),
      builder: (context, vmodel, child) => Scaffold(
        appBar: ZuriAppBar(
          leadingWidth: true,
          isDarkMode: _dark,
          orgTitle: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () => vmodel.navigateToOrganization(),
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  clipBehavior: Clip.hardEdge,
                  //TODO : Add the org image here
                  child: vmodel.orgLogo != null && vmodel.orgLogo!.isNotEmpty
                      ? CachedNetworkImage(
                          imageUrl: vmodel.orgLogo!,
                          fit: BoxFit.cover,
                        )
                      : const Image(
                          image: appBarLogo,
                          fit: BoxFit.cover,
                          height: 25,
                        ),
                ),
              ),
              const SizedBox(width: 16),
              Text(
                vmodel.orgName,
                style: AppTextStyle.organizationNameText,
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              vmodel.isBusy
                  ? LinearProgressIndicator(
                      backgroundColor: Colors.grey[400],
                      valueColor: AlwaysStoppedAnimation(_dark
                          ? AppColors.darkThemePrimaryColor
                          : AppColors.zuriPrimaryColor),
                    )
                  : Container(),
              Expanded(
                child: body(context, vmodel),
              ),
            ],
          ),
        ),
<<<<<<< HEAD
        //TODO
        // floatingActionButton: FloatingActionButton(
        //   onPressed: vmodel.navigateToStartDMScreen,
        //   child: IconButton(
        //     onPressed: vmodel.navigateToStartDMScreen,
        //     icon: SvgPicture.asset('assets/icons/svg_icons/create_msg.svg'),
        //     color: AppColors.whiteColor,
        //   ),
        //   backgroundColor: AppColors.zuriPrimaryColor,
        // ),
=======
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
      ),
    );
  }

  Widget body(BuildContext context, HomePageViewModel vmodel) {
    final local = AppLocalization.of(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 15),
          searchBar(context, vmodel),
          vmodel.hasThreads()
              ? const Padding(
                  padding: EdgeInsets.fromLTRB(zSideMargin, 10, zSideMargin, 3),
                  child: ThreadTextAndIcon(),
                )
              : Container(),
          vmodel.hasDrafts()
              ? const Padding(
                  padding: EdgeInsets.fromLTRB(zSideMargin, 0, zSideMargin, 3),
                  child: DraftTextAndIcon())
              : Container(),
          const Divider(),
          //TODO
          // HomeExpandedList(
          //   title: local!.unreads,
          //   canExpand: false,
          //   data: vmodel.unreads,
          // ),
          // const Divider(),
          HomeExpandedList(
            title: local!.channels,
            data: vmodel.joinedChannels,
          ),
          const Divider(),
          HomeExpandedList(
            title: local.directMessages,
            data: vmodel.directMessages,
          ),
          const Divider(),
        ],
      ),
    );
  }

  Widget searchBar(context, vmodel) {
    final local = AppLocalization.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(zSideMargin, 0, zSideMargin, 0),
      child: GestureDetector(
        onTap: () => vmodel.onJumpToScreen(),
<<<<<<< HEAD
        child: EasyContainer(
          height: 50,
          radius: 7,
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          alignment: Alignment.centerLeft,
          borderWidth: 1.5,
          borderColor: Colors.grey[300],
=======
        child: Container(
          height: 50,
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border:
                  Border.all(color: AppColors.greyBackgroundColor, width: 1.5)),
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
          child: Text(
            local!.jumpTo,
            style: AppTextStyle.darkGreySize14,
          ),
        ),
      ),
    );
  }
}
