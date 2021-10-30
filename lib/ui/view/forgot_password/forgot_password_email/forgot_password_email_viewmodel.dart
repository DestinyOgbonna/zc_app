import 'package:zurichat/app/app.locator.dart';
import 'package:zurichat/app/app.router.dart';
<<<<<<< HEAD
import 'package:zurichat/constants/app_strings.dart';
import 'package:zurichat/package/base/server-request/api/zuri_api.dart';
import 'package:zurichat/services/local_storage_services.dart';
=======
import 'package:zurichat/utilities/constants/app_strings.dart';
import 'package:zurichat/utilities/api_handlers/zuri_api.dart';
import 'package:zurichat/services/app_services/local_storage_services.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
import 'package:zurichat/ui/shared/shared.dart';
import 'package:zurichat/ui/view/forgot_password/forgot_password_email/forgot_password_email_view.form.dart';
import 'package:zurichat/utilities/enums.dart';
import 'package:zurichat/utilities/mixins/validators_mixin.dart';
<<<<<<< HEAD
import 'package:zurichat/utilities/storage_keys.dart';
=======
import 'package:zurichat/utilities/constants/storage_keys.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ForgotPasswordEmailViewModel extends FormViewModel with ValidatorMixin {
  bool inputError = false;
  final _navigationService = locator<NavigationService>();
  final _snackbarService = locator<SnackbarService>();
  final _apiService = ZuriApi(coreBaseUrl);
  bool isLoading = false;
  final storageService = locator<SharedPreferenceLocalStorage>();
  String? get token =>
      storageService.getString(StorageKeys.currentSessionToken);

  loading(status) {
    isLoading = status;
    notifyListeners();
  }

  Future validateEmailIsRegistered() async {
    loading(true);

    if (forgotEmailValue == '') {
      loading(false);
      _snackbarService.showCustomSnackBar(
        duration: const Duration(seconds: 2),
        variant: SnackbarType.failure,
        message: fillAllFields,
      );
      return;
    } else if (RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_"
            r"`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(forgotEmailValue!)) {
      loading(true);
    } else {
      loading(false);
      _snackbarService.showCustomSnackBar(
        duration: const Duration(seconds: 2),
        variant: SnackbarType.failure,
        message: invalidEmailFormat,
      );
      return;
    }

    final validationData = {'email': forgotEmailValue};
    final response = await _apiService.post(requestOTPEndpoint,
        body: validationData, token: token);
    response != null ? loading(false) : loading(true);

    if (response?.statusCode == 200) {
      _snackbarService.showCustomSnackBar(
        duration: const Duration(seconds: 2),
        variant: SnackbarType.success,
        message: checkEmailForOTP,
      );

      navigateToForgotPasswordOtpView();
    }
<<<<<<< HEAD
=======
    loading(false);
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
  }

  @override
  void setFormStatus() {}

  void navigateToForgotPasswordOtpView() =>
      _navigationService.navigateTo(Routes.forgotPasswordOtpView);

<<<<<<< HEAD
  void navigateToSignIn() => _navigationService.navigateTo(Routes.loginView);
=======
  void navigateToSignIn() => _navigationService.back();
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
}
