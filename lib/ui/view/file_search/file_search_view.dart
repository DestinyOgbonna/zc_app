// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:zurichat/constants/app_strings.dart';
import 'package:zurichat/ui/shared/text_styles.dart';
import 'package:zurichat/utilities/internalization/localization/app_localization.dart';
=======
import 'package:zurichat/utilities/constants/app_strings.dart';
import 'package:zurichat/utilities/constants/text_styles.dart';
import 'package:zurichat/utilities/internationalization/app_localization.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
import 'package:stacked/stacked.dart';

import '../../shared/shared.dart';

import 'widgets/tab_bar.dart';
import 'widgets/search_bar.dart';
import 'widgets/file_tile.dart';
import 'file_search_viewmodel.dart';

class FileSearchView extends StatefulWidget {
  const FileSearchView({Key? key}) : super(key: key);

  @override
  State<FileSearchView> createState() => _FileSearchViewState();
}

class _FileSearchViewState extends State<FileSearchView> {
  final Widget _divider =
      const Divider(height: 5, color: AppColors.borderColor);

  @override
  Widget build(BuildContext context) {
    final local = AppLocalization.of(context);
    return ViewModelBuilder<FileSearchViewModel>.reactive(
      viewModelBuilder: () => FileSearchViewModel(),
      builder: (context, viewModel, child) => SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.whiteColor,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(100),
            child: AppBar(
              backgroundColor: AppColors.zuriPrimaryColor,
              automaticallyImplyLeading: false,
              title: CustomSearchBar(
                searchFilter: local!.designers,
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(49),
                child: CustomTabBar(
                  tab1: local.messages,
                  tab2: local.files,
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 49,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Positioned(
                        left: 12,
                        child: Text(
                          //TODO REMOVE HARDCODED DATA AND TRANSLATE
                          FiftyResults,
                          style: AppTextStyle.darkGreySize16,
                        ),
                      ),
                      const Expanded(
                        child: SizedBox(width: 1000),
                      ),
                      Positioned(
                        right: 12,
                        child: Row(
                          children: [
                            Text(
                              local.newest,
                              style: AppTextStyle.darkGreySize16,
                            ),
                            Image.asset(Arrows),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                _divider,
                const CustomFileListTile(
                    imagelink: FileLogo,
                    fileName: ImageFileName,
                    subtitle: ImageDetails),
                _divider,
                const CustomFileListTile(
                  imagelink: FileLogo,
                  fileName: ImageFileName,
                  subtitle: ImageDetails,
                ),
                _divider,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
