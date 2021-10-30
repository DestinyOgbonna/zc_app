import 'dart:io';

// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_appavailability/flutter_appavailability.dart';
import 'package:zurichat/app/app.logger.dart';
<<<<<<< HEAD
import 'package:zurichat/constants/app_strings.dart';
=======
import 'package:zurichat/utilities/constants/app_strings.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../app/app.locator.dart';
import '../../../../utilities/enums.dart';

class EmailConfirmationViewModel extends BaseViewModel {
  final log = getLogger('EmailConfirmationViewModel');
  final snackbar = locator<SnackbarService>();

  void openEmailApp() {
    try {
      AppAvailability.launchApp(
              Platform.isIOS ? 'message://' : 'com.google.android.gm')
          .then((_) {
        log.i('App Email launched!');
      }).catchError((err) {
        snackbar.showCustomSnackBar(
          duration: const Duration(seconds: 3),
          variant: SnackbarType.failure,
          message: EmailAppNotFound,
        );
        log.i(err);
      });
    } catch (e) {
      snackbar.showCustomSnackBar(
        duration: const Duration(seconds: 3),
        variant: SnackbarType.failure,
        message: EmailAppNotFound,
      );
    }
  }
}
