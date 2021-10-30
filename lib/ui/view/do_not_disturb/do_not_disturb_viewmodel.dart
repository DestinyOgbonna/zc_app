<<<<<<< HEAD
import 'package:zurichat/constants/app_strings.dart';
=======
import 'package:zurichat/utilities/constants/app_strings.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class DoNotDisturbViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  List doNotDisturbTimes = [
    ThirtyMins,
    OneHour,
    TwoHours,
    UntilTomorrow,
    Custom,
  ];
  int? currentValue = 0;

  void exitPage() {
    _navigationService.back();
  }

  void changeTime(int? value) {
    currentValue = value;
    notifyListeners();
  }
}
