import 'dart:io';
<<<<<<< HEAD

import 'package:zurichat/app/app.locator.dart';
import 'package:zurichat/services/media_service.dart';
import 'package:zurichat/utilities/enums.dart';

import 'package:zurichat/models/channel_members.dart';
import 'package:zurichat/package/base/server-request/channels/channels_api_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
=======
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:zurichat/app/app.locator.dart';
import 'package:zurichat/models/channel_members.dart';
import 'package:zurichat/models/organization_member_model.dart';
import 'package:zurichat/services/messaging_services/channels_api_service.dart';
import 'package:zurichat/services/core_services/organization_api_service.dart';
import 'package:zurichat/services/app_services/local_storage_services.dart';
import 'package:zurichat/services/app_services/media_service.dart';
import 'package:zurichat/services/app_services/notification_service.dart';
import 'package:zurichat/services/in_review/user_service.dart';
import 'package:zurichat/utilities/enums.dart';
import 'package:zurichat/utilities/constants/storage_keys.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6

import '/../../app/app.logger.dart';

class ExpandableTextFieldScreenViewModel extends BaseViewModel {
  final _mediaService = locator<MediaService>();
  final List<File> _mediaList = [];
  final _dialogService = locator<DialogService>();
  final log = getLogger('ExpandableTextFieldScreenViewModel');
  final channelsApiService = locator<ChannelsApiService>();
<<<<<<< HEAD
=======
  final organizationApiService = locator<OrganizationApiService>();
  final _userService = locator<UserService>();
  final storage = locator<SharedPreferenceLocalStorage>();
  final notificationService = locator<NotificationService>();
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6

  bool isVisible = false;
  bool isExpanded = false;
  bool _showMembers = false;
  bool get showMembers => _showMembers;
  double maxSize = 0;
  double minSize = 70;
  double size = 0;
  double offset = 0;
<<<<<<< HEAD
  List<ChannelMembermodel>? channelUsersList = [];
  List<ChannelMembermodel>? matchedUsers = [];

  void init(double max, [bool val = true]) {
    if (val) size = minSize;
    maxSize = max;
=======
  List<OrganizationMemberModel> organizationUsersList = [];
  List<OrganizationMemberModel>? matchedUsers = [];
  List<ChannelMembermodel>? channelUsersLists = [];
  String? get displayName => storage.getString(StorageKeys.displayName);
  bool yes = false;

  void init(double max, String channelId, [bool val = true]) {
    if (val) size = minSize;
    maxSize = max;
    userMentions();
    getUsersInChannels(channelId);
    log.i('oo: $channelId');
    storage.setString(StorageKeys.displayName, 'aconchuk');
    log.i('oo: $displayName');
    notifyListeners();
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
  }

  void toggleExpanded(bool val) {
    if (val) {
      size = maxSize;
      isExpanded = true;
    } else {
      size = minSize;
      toggleVisibility(isVisible);
      isExpanded = val;
    }
    notifyListeners();
  }

  void toggleVisibility(bool _isVisible) {
    if (!_isVisible) {
      isVisible = false;
      size = minSize;
    } else {
      isVisible = true;
      size = minSize + 50;
    }
    notifyListeners();
  }

  Future<void> onCameraTap(String roomId) async {
    final media = await _mediaService.getImage(fromGallery: true);
    _mediaList.add(media!);
    if (mediaList.isEmpty) {
      size = isVisible ? minSize + 50 : minSize;
    } else {
      size = isVisible ? minSize + 120 : minSize + 70;
    }
    notifyListeners();
  }

  List<File> get mediaList => _mediaList;
  popDialog(String text, String channelID) async {
    final dialogResult = await _dialogService.showCustomDialog(
      variant: DialogType.scheduleMessageChannel,
      data: {'channelID': channelID, 'message': text},
    );

    if (dialogResult != null) {
      log.i(dialogResult.data);

      notifyListeners();
    }
  }

<<<<<<< HEAD
  Future<void> userMentions() async {
    setBusy(true);
    matchedUsers = channelUsersList =
        await channelsApiService.getChannelMembers("615045e9cf2c0f1ad758558d");
=======
  /// Get all users in an organization
  Future<void> userMentions() async {
    setBusy(true);
    final orgId = _userService.currentOrgId;

    var users = await organizationApiService.getOrganizationMemberList(orgId);
    if (users.status == 200) {
      matchedUsers = organizationUsersList = users.data;
    }
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
    setBusy(false);
    notifyListeners();
  }

  void showMembersList(bool show) {
<<<<<<< HEAD
    matchedUsers = channelUsersList;
=======
    matchedUsers = organizationUsersList;
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
    _showMembers = show;
    notifyListeners();
  }

<<<<<<< HEAD
  searchUsers(List<ChannelMembermodel> search) {
    matchedUsers = search;
  }

  void onSearchUser(String input) {
    matchedUsers = [
      ...channelUsersList!.where(
          (user) => user.name.toLowerCase().contains(input.toLowerCase()))
=======
  searchUsers(List<OrganizationMemberModel> search) {
    matchedUsers = search;
    notifyListeners();
  }

  /// filter users
  void onSearchUser(String input) {
    matchedUsers = [
      ...organizationUsersList.where(
          (user) => user.userName!.toLowerCase().contains(input.toLowerCase()))
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
    ];
    notifyListeners();
  }

  void clearMatchedUsers() {
<<<<<<< HEAD
    matchedUsers = channelUsersList;

=======
    matchedUsers = organizationUsersList;
    notifyListeners();
  }

  /// Gets all users in a channel
  /// Args: channel id
  Future<void> getUsersInChannels(channelId) async {
    channelUsersLists = await channelsApiService.getChannelMembers(channelId);
    notifyListeners();
  }

  /// Invite a user to a channel
  /// Args: channel id, username of user to be added
  Future<bool>? addUserToChannel(String channelId, String username) async {
    bool response = false;
    getUsersInChannels(channelId);
    userMentions();

    /// Check if the user to be added exists in the organization
    var isMember = organizationUsersList
        .where((user) => user.userName!.toLowerCase().contains(username));

    if (isMember.isNotEmpty) {
      /// if user exist get the user's id
      String? memberId = isMember.first.id;

      /// Check if user already exists in the channel
      bool? userExists = channelUsersLists
          ?.where((user) => user.name.contains(memberId!))
          .isNotEmpty;

      if (!userExists!) {
        /// Add user to channel if user doesn't exist in the channel
        var res =
            await channelsApiService.addChannelMember(channelId, memberId);
        getUsersInChannels(channelId);
        // If succesful let the response be true
        if (res?['_id'] == memberId) {
          response = true;
        }
      }
    }
    yes = !yes;
    notifyListeners();
    return response;
  }

  void notifyUserOnMention(String message, String channelName) async {
    await notificationService.notifyUsers(message, channelName);
    //navigationService.popRepeated(1);
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
    notifyListeners();
  }

  void clearMediaList() {
    _mediaList.clear();
  }
}
