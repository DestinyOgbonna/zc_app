import 'package:zurichat/app/app.logger.dart';
<<<<<<< HEAD
import 'package:zurichat/package/base/server-request/api/zuri_api.dart';
=======
import 'package:zurichat/utilities/api_handlers/zuri_api.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../app/app.locator.dart';
import '../../../../app/app.router.dart';
import '../../../../models/user_model.dart';

<<<<<<< HEAD
import '../../../../services/local_storage_services.dart';
import '../../../../utilities/constants.dart';
import '../../../../utilities/storage_keys.dart';
=======
import '../../../../services/app_services/local_storage_services.dart';
import '../../../../utilities/constants/app_constants.dart';
import '../../../../utilities/constants/storage_keys.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6

class CustomUserBottomSheetViewModel extends FutureViewModel {
  final _navigationService = locator<NavigationService>();
  final _storage = locator<SharedPreferenceLocalStorage>();
  final _apiService = ZuriApi(coreBaseUrl);
  final log = getLogger("Custom User Bottom Sheet");
  UserModel? _userModel;

  void navigateToSetStatus() =>
      _navigationService.navigateTo(Routes.setStatusView);

  void navigateToEditProfile() =>
      _navigationService.navigateTo(Routes.editProfileView);

//TODO CHECK THIS ENTIRE BOTTOM SHEET
  @override
  Future<void> futureToRun() async {
    final userID = _storage.getString(StorageKeys.currentUserId);
    final currentSessionToken =
        _storage.getString(StorageKeys.currentSessionToken);
    final response =
        await _apiService.get('users/$userID', token: currentSessionToken);
    _userModel = UserModel.fromJson(response!.data['data']);
    log.i(response);
  }

  UserModel? get userModel => _userModel;
}
