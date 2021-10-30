<<<<<<< HEAD
import 'package:zurichat/constants/app_strings.dart';

import '../../general_widgets/app_toast.dart';
=======
import 'package:zurichat/utilities/constants/app_strings.dart';

import '../../services/app_services/app_toast.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6

mixin CustomWillPopScopeMixin {
  static bool _secondBack = false;
  static const secondTapDurationSpace = Duration(seconds: 2);
  Future<bool> onSecondBackPop() async {
    if (!_secondBack) {
      AppToast.instance.message(null, 'Press back again to close $appName');
      _secondBack = true;
      Future.delayed(secondTapDurationSpace, () => _secondBack = false);
      return false;
    } else {
      return true;
    }
  }

  Future<bool> delayAndPop() async {
    AppToast.instance.message(null, 'Closing $appName');
    return Future.delayed(secondTapDurationSpace, () => true);
  }
}
