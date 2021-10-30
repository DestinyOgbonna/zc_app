<<<<<<< HEAD
import 'package:zurichat/constants/app_strings.dart';
import 'package:zurichat/package/base/server-request/api/zuri_api.dart';
import 'package:zurichat/services/local_storage_services.dart';
import 'package:zurichat/services/status_service.dart';
import 'package:zurichat/utilities/constants.dart';
import 'package:zurichat/utilities/enums.dart';
import 'package:zurichat/utilities/storage_keys.dart';
=======
import 'package:zurichat/utilities/constants/app_strings.dart';
import 'package:zurichat/utilities/api_handlers/zuri_api.dart';
import 'package:zurichat/services/app_services/local_storage_services.dart';
import 'package:zurichat/services/in_review/status_service.dart';
import 'package:zurichat/utilities/constants/app_constants.dart';
import 'package:zurichat/utilities/enums.dart';
import 'package:zurichat/utilities/constants/storage_keys.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:zurichat/app/app.locator.dart';
import 'package:zurichat/app/app.router.dart';
import 'package:zurichat/app/app.logger.dart';

class SetStatusViewModel extends ReactiveViewModel {
  final _navigationService = locator<NavigationService>();
  final _storageService = locator<SharedPreferenceLocalStorage>();
  final _zuriApi = ZuriApi(coreBaseUrl);
  final _snackbarService = locator<SnackbarService>();
  final _statusService = locator<StatusService>();
  final _bottomSheetService = locator<BottomSheetService>();
<<<<<<< HEAD
  final log = getLogger('SetStatusViewModel');
  final String hintText = SetAStatus;
  bool isLoading = false;
  String? _tagIcon;
  String _statusText = '';
  String? get tagIcon => _tagIcon;
  String get statusText => _statusText;
=======

  final log = getLogger('SetStatusViewModel');
  String _hintText = SetAStatus;
  String? _tagIcon;
  String _statusText = '';
  String _expiryTime = 'dont_clear';
  String get hintText => _hintText;
  String? get tagIcon => _tagIcon;
  String get statusText => _statusText;
  String get expiryTime => _expiryTime;

  String? _formerStatusText;
  String? _formerStatusIcon;
  String? _formerStatusDuration;
  String? get formerStatusText => _formerStatusText;
  String? get formerStatusIcon => _formerStatusIcon;
  String? get formerStatusDuration => _formerStatusDuration;
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_statusService];

<<<<<<< HEAD
  loading(status) {
    isLoading = status;
    notifyListeners();
  }

  statusValueText(value) {
    _statusText = value;
=======
  statusValueText(value) {
    _statusText = value;
    notifyListeners();
  }

  statusValueIcon(value) {
    _tagIcon = value;
    notifyListeners();
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
  }

  void exitPage() {
    _navigationService.back();
  }

  Future clearAfter() async {
    await _navigationService.navigateTo(Routes.clearAfterView);
  }

  saveStatus() async {
<<<<<<< HEAD
    loading(true);
=======
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
    final orgId = _storageService.getString(StorageKeys.currentOrgId);
    final memberId = _storageService.getString(StorageKeys.idInOrganization);
    final token = _storageService.getString(StorageKeys.currentSessionToken);
    final endpoint = 'organizations/$orgId/members/$memberId/status';
<<<<<<< HEAD
    final data = {
      'tag': _tagIcon,
      'text': _statusText,
      'expiry_time': 'dont_clear'
=======

    final data = {
      'tag': _tagIcon,
      'text': _statusText,
      'expiry_time': _expiryTime
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
    };
    try {
      final response = await _zuriApi.patch('$coreBaseUrl$endpoint',
          body: data, token: token);

      if (response != null && response.statusCode == 200) {
        _storageService.setString(StorageKeys.statusText, _statusText);
<<<<<<< HEAD
        if (tagIcon != null) {
          _storageService.setString('status_tag_icon', _tagIcon!);
        }
        _statusService.updateStatusText(_statusText);
      }
      loading(false);
      exitPage();
    } catch (e) {
      loading(false);
=======
        _storageService.setString(StorageKeys.statusExpiry, _expiryTime);
        if (tagIcon != null) {
          _storageService.setString(StorageKeys.statusTagIcon, _tagIcon!);
        }
        _statusService.updateStatusText(_statusText);
        _statusService.updateStatusIcon(_tagIcon);
        notifyListeners();
      } else {
        _snackbarService.showCustomSnackBar(
          message: errorOccurred,
          variant: SnackbarType.failure,
          duration: const Duration(seconds: 2),
        );
      }
      exitPage();
    } catch (e) {
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
      _snackbarService.showCustomSnackBar(
        message: e.toString(),
        variant: SnackbarType.failure,
        duration: const Duration(seconds: 2),
      );
    }
  }

  Future addEmojiTag() async {
    String? emoji;
    var sheetResponse = await _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.emojiPicker,
      isScrollControlled: true,
    );

    if (sheetResponse!.confirmed == true) {
      emoji = sheetResponse.data.emoji;
      log.i('QQQ - ${emoji.hashCode}');
      _tagIcon = emoji;
      notifyListeners();
    }
  }

<<<<<<< HEAD
  clear() {}
=======
  init() {
    _formerStatusText = _storageService.getString(StorageKeys.statusText);
    _formerStatusIcon = _storageService.getString(StorageKeys.statusTagIcon);
    _hintText = _formerStatusText ?? SetAStatus;
    _tagIcon = _formerStatusIcon;
    _formerStatusDuration =
        decodeExpiry(_storageService.getString(StorageKeys.statusExpiry));
  }

  /// Preset Expiry Options (_String_) : dont_clear, thirty_mins, one_hour, four_hours, today, this_week.
  ///
  /// Custom Time Format "2006-01-02T15:04:05Z07:00"
  String? decodeExpiry(String? expiry) {
    if (expiry == 'dont_clear') {
      return 'Don\'t clear';
    } else if (expiry == 'this_week') {
      return 'this week';
    } else if (expiry == 'four_hours') {
      return '4 hours';
    } else if (expiry == 'one_hour') {
      return '1 hour';
    } else if (expiry == 'thirty_mins') {
      return '30 mins';
    } else {
      return expiry;
    }
  }

  //Custom Status buttons
  inMeeting() {
    _statusText = InMeeting;
    _hintText = InMeeting;
    _tagIcon = '📆';
    _expiryTime = 'one_hour';
    notifyListeners();
  }

  commuting() {
    _statusText = Commuting;
    _hintText = Commuting;
    _tagIcon = '🚊';
    _expiryTime = 'thirty_mins';
    notifyListeners();
  }

  offSick() {
    _statusText = OffSick;
    _hintText = OffSick;
    _tagIcon = '🤒';
    _expiryTime = 'today';
    notifyListeners();
  }

  onHoliday() {
    _statusText = OnHoliday;
    _hintText = OnHoliday;
    _tagIcon = '✈';
    _expiryTime = 'dont_clear';
    notifyListeners();
  }

  workingRemotely() {
    _statusText = WorkingRemotely;
    _hintText = WorkingRemotely;
    _tagIcon = '🏡';
    _expiryTime = 'today';
    notifyListeners();
  }

  clear() {
    _statusText = SetAStatus;
    _hintText = SetAStatus;
    _tagIcon = null;
    _expiryTime = 'dont_clear';
    notifyListeners();
  }
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
}
