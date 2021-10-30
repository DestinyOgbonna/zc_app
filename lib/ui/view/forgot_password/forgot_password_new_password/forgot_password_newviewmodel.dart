import 'package:zurichat/app/app.locator.dart';
import 'package:zurichat/app/app.logger.dart';
import 'package:zurichat/app/app.router.dart';
<<<<<<< HEAD
import 'package:zurichat/constants/app_strings.dart';
import 'package:zurichat/package/base/server-request/api/zuri_api.dart';
import 'package:zurichat/services/local_storage_services.dart';
import 'package:zurichat/ui/shared/shared.dart';
import 'package:zurichat/utilities/enums.dart';
import 'package:zurichat/utilities/mixins/validators_mixin.dart';
import 'package:zurichat/utilities/storage_keys.dart';
=======
import 'package:zurichat/utilities/constants/app_strings.dart';
import 'package:zurichat/utilities/api_handlers/zuri_api.dart';
import 'package:zurichat/services/app_services/local_storage_services.dart';
import 'package:zurichat/ui/shared/shared.dart';
import 'package:zurichat/utilities/enums.dart';
import 'package:zurichat/utilities/mixins/validators_mixin.dart';
import 'package:zurichat/utilities/constants/storage_keys.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'forgot_password_newview.form.dart';

class ForgotPasswordNewViewModel extends FormViewModel with ValidatorMixin {
  bool inputError = false;
  final NavigationService _navigationService = NavigationService();
  final _apiService = ZuriApi(coreBaseUrl);
  final snackbar = locator<SnackbarService>();
  final log = getLogger("Forgot Password New View Model");
  bool isLoading = false;
  final storageService = locator<SharedPreferenceLocalStorage>();
  String? get token =>
      storageService.getString(StorageKeys.currentSessionToken);

  loading(status) {
    isLoading = status;
    notifyListeners();
  }

  void navigateToLogin() {
<<<<<<< HEAD
    _navigationService.navigateTo(Routes.loginView);
=======
    _navigationService.clearStackAndShow(Routes.loginView);
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
  }

  void passwordVerification() {
    _passwordValidation();
    notifyListeners();
  }

  void _passwordValidation() {
    bool validatePassword = passValidation(newPasswordValue!);
    if (validatePassword) {
      inputError = !validatePassword;
      navigateToLogin();
    } else {
      inputError = !validatePassword;
      log.e('$inputError');
    }
  }

  Future resetPassword() async {
    loading(true);
    //TODO - wrong endpoint

    if (newPasswordValue == '' || confirmPasswordValue == '') {
      loading(false);
      snackbar.showCustomSnackBar(
        duration: const Duration(seconds: 3),
        variant: SnackbarType.failure,
        message: fillAllFields,
      );
<<<<<<< HEAD
=======

>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
      return;
    } else if (newPasswordValue != confirmPasswordValue) {
      loading(false);
      snackbar.showCustomSnackBar(
        duration: const Duration(seconds: 3),
        variant: SnackbarType.failure,
        message: passwordsMustMatch,
      );
      return;
    }

    final newPasswordData = {
      'password': newPasswordValue,
      'confirm_password': confirmPasswordValue
    };
    //TODO - CONFIRM ENDPOINT - should be a patch req
    final response = await _apiService.post(resetPasswordEndpoint,
        body: newPasswordData, token: token);
    loading(false);
    if (response?.statusCode == 200) {
      snackbar.showCustomSnackBar(
        duration: const Duration(seconds: 3),
        variant: SnackbarType.success,
        message: passwordUpdated,
      );
      navigateToLogin();
    }
  }

  @override
  void setFormStatus() {}
}
