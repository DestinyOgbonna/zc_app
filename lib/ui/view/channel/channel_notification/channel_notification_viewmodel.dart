<<<<<<< HEAD
import 'package:zurichat/constants/app_strings.dart';
=======
import 'package:zurichat/utilities/constants/app_strings.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
import 'package:stacked/stacked.dart';

class ChannelNotificationViewModel extends BaseViewModel {
  String? value = New;

  void toggleOptions(String? val) {
    value = val;
    notifyListeners();
  }
}
