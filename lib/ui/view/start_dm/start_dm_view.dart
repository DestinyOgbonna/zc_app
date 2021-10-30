import 'package:flutter/material.dart';
import 'package:flutter_chips_input/flutter_chips_input.dart';
<<<<<<< HEAD
import 'package:zurichat/constants/app_strings.dart';

import 'package:zurichat/ui/shared/text_styles.dart';
import 'package:zurichat/ui/shared/zuri_appbar.dart';
=======
import 'package:zurichat/utilities/constants/app_strings.dart';

import 'package:zurichat/utilities/constants/text_styles.dart';
import 'package:zurichat/ui/shared/dumb_widgets/zuri_appbar.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6

import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'start_dm_view.form.dart';
import 'start_dm_viewmodel.dart';
import 'widgets/custom_chip_input.dart';

//stacked forms handling
@FormView(
  fields: [
    FormTextField(name: 'message'),
  ],
)
class StartDmView extends StatelessWidget with $StartDmView {
  StartDmView({Key? key}) : super(key: key);

  final _chipKey = GlobalKey<ChipsInputState>();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartDmViewModel>.reactive(
      onModelReady: (model) => listenToFormUpdated(model),
      viewModelBuilder: () => StartDmViewModel(),
      builder: (ctx, model, child) => Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: ZuriAppBar(
          orgTitle: Text(
            DM,
            style: AppTextStyle.darkGreySize20Bold.copyWith(
              color: Theme.of(context).textTheme.bodyText1!.color,
            ),
          ),
          leading: Icons.arrow_back_ios,
          isDarkMode: Theme.of(context).brightness == Brightness.dark,
          whiteBackground: true,
          leadingPress: () => model.navigateBack(),
          actions: [
            TextButton(
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.only(right: 16.0)),
              onPressed: () {},
              child: Text(
                Done,
                style: AppTextStyle.greenSize16.copyWith(
                  letterSpacing: 0.5,
                ),
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            Positioned(
              child: Column(
                children: <Widget>[
                  FutureBuilder(
                      future: model.userResults,
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        if (snapshot.hasData) {
                          return CustomChipInput(
                              chipKey: _chipKey, mockResults: snapshot.data);
                        } else {
                          return Container();
                        }
                      }),
                  const Divider(color: Colors.black, thickness: 0.1),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
