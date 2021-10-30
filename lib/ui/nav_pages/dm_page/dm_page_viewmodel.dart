<<<<<<< HEAD
import 'package:zurichat/services/local_storage_services.dart';
=======
import 'package:zurichat/services/app_services/local_storage_services.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6

import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class DmPageViewModel extends FutureViewModel<bool> {
  final navigationService = locator<NavigationService>();
  final storageService = locator<SharedPreferenceLocalStorage>();

  Future<bool> getActiveDMs() async {
    await Future.delayed(const Duration(seconds: 1));
    return false;
  }

  goBack() => navigationService.back();

  void navigateToDmUserView() {
    navigationService.navigateTo(Routes.dmUserView);
  }

  void navigateToDmScreen() {
    navigationService.navigateTo(Routes.dmScreen);
  }

  void navigateToJumpToScreen() {
<<<<<<< HEAD
    navigationService.navigateTo(Routes.dmJumpToView);
=======
    navigationService.navigateTo(Routes.jumpToView);
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
  }

  @override
  Future<bool> futureToRun() {
    return getActiveDMs();
  }
}
