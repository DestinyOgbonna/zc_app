import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:zurichat/ui/shared/text_styles.dart';
import 'package:stacked/stacked.dart';

import '../../../../constants/app_strings.dart';
import '../../../shared/zuri_appbar.dart';
=======
import 'package:zurichat/utilities/constants/text_styles.dart';
import 'package:stacked/stacked.dart';

import '../../../../utilities/constants/app_strings.dart';
import '../../../shared/dumb_widgets/zuri_appbar.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
import 'terms_and_conditions_view_model.dart';

class TermsAndConditionsView extends StatelessWidget {
  const TermsAndConditionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
=======
    final bool _dark = Theme.of(context).brightness == Brightness.dark;
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
    return ViewModelBuilder<TermsAndConditionsViewModel>.nonReactive(
        viewModelBuilder: () => TermsAndConditionsViewModel(),
        builder: (context, model, child) {
          return Scaffold(
            appBar: ZuriAppBar(
              leading: Icons.arrow_back,
<<<<<<< HEAD
              orgTitle: Text(
                TnC2.toUpperCase(),

                style: AppTextStyle.darkGreySize20Bold,

=======
              isDarkMode: _dark,
              orgTitle: Text(
                TnC2.toUpperCase(),
                style: AppTextStyle.whiteSize20Bold,
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
              ),
              leadingPress: () => model.popNavigation(),
            ),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 16,
              ),
              child: Text(
                TermsAndConditions,
<<<<<<< HEAD
                style: AppTextStyle.darkGreySize16,
=======
                style: _dark
                    ? AppTextStyle.whiteSize16
                    : AppTextStyle.darkGreySize16,
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
              ),
            ),
          );
        });
  }
}
