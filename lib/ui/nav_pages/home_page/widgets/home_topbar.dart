import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

<<<<<<< HEAD
import '../../../../general_widgets/easy_container.dart';
import '../../../shared/colors.dart';
import '../../../shared/shared.dart';
import '../../../shared/text_styles.dart';
=======
import '../../../../utilities/constants/colors.dart';
import '../../../shared/shared.dart';
import '../../../../utilities/constants/text_styles.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
import '../home_page_viewmodel.dart';

class HomePageTopBar extends ViewModelWidget<HomePageViewModel> {
  final Widget? organizationLogo;
  final String organizationName;

  const HomePageTopBar({
    Key? key,
    this.organizationLogo,
    required this.organizationName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, viewModel) {
    //Todo:get the standard app bar height
<<<<<<< HEAD
    return EasyContainer(
      color: AppColors.zuriPrimaryColor,
      height: kToolbarHeight + 10,
      padding: const EdgeInsets.fromLTRB(zSideMargin, 0, zSideMargin, 0),
      boxShadow: [
=======
    return Container(
      color: AppColors.zuriPrimaryColor,
      height: kToolbarHeight + 10,
      padding: const EdgeInsets.fromLTRB(zSideMargin, 0, zSideMargin, 0),
      decoration: BoxDecoration(boxShadow: [
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
        BoxShadow(
          offset: const Offset(0, 3),
          blurRadius: 6,
          color: Colors.black.withOpacity(0.1),
        )
<<<<<<< HEAD
      ],
=======
      ]),
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
      child: SafeArea(
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                viewModel.navigateToOrganization();
              },
              child: organizationLogo ??
<<<<<<< HEAD
                  const EasyContainer(
=======
                  Container(
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
                    height: 35,
                    width: 35,
                    color: AppColors.whiteColor,
                    alignment: Alignment.center,
<<<<<<< HEAD
                    radius: 6,
                    child: Image(
=======
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Image(
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
                      image: appBarLogo,
                      fit: BoxFit.cover,
                      height: 25,
                    ),
                  ),
            ),
            const SizedBox(width: 16),
            Text(
              organizationName,
              style: AppTextStyle.organizationNameText,
            )
          ],
        ),
      ),
    );
  }
}
