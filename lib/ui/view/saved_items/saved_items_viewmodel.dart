import 'dart:convert';

import 'package:zurichat/app/app.locator.dart';
import 'package:zurichat/app/app.router.dart';
<<<<<<< HEAD
import 'package:zurichat/models/saved_item_model.dart';
import 'package:zurichat/services/local_storage_services.dart';
import 'package:zurichat/utilities/storage_keys.dart';
=======
import 'package:zurichat/models/user_post.dart';
import 'package:zurichat/services/app_services/local_storage_services.dart';
import 'package:zurichat/utilities/constants/storage_keys.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:zurichat/app/app.logger.dart';

class SavedItemsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final storageService = locator<SharedPreferenceLocalStorage>();
<<<<<<< HEAD
  List<SavedItemModel> savedBuilderList = [];
=======
  List<UserPost> savedBuilderList = [];
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
  final log = getLogger('SavedItemsViewModel');

  goBack() => _navigationService.back();

  deleteItem(int index) {
    savedBuilderList.removeAt(index);
    goBack();
    notifyListeners();
  }

  navigateToMessage(userPost) {
    _navigationService.navigateTo(Routes.threadDetailView,
        arguments: ThreadDetailViewArguments(userPost: userPost));
  }

  get savedItems {
    var channelStorageKeys =
        storageService.getStringList(StorageKeys.savedItem);

    if (channelStorageKeys != null) {
      channelStorageKeys.forEach((element) {
        if (storageService.getString(element) != null) {
          var savedItemMap = storageService.getString(element);
          if (savedItemMap != null) {
            var savedMap = jsonDecode(savedItemMap);
<<<<<<< HEAD
            log.w(savedMap);
            savedBuilderList.add(SavedItemModel(
              savedMap['channel_name'],
              savedMap['user_id'],
              savedMap['user_image'],
              savedMap['last_seen'],
              savedMap['message'],
              savedMap['channel_id'],
              savedMap['display_name'],
=======

            savedBuilderList.add(UserPost(
              id: element,
              statusIcon: '⭐',
              postEmojis: <PostEmojis>[],
              userThreadPosts: <UserThreadPost>[],
              userImage: savedMap['user_image'],
              userId: savedMap['user_id'],
              channelName: savedMap['channel_name'],
              moment: savedMap['last_seen'],
              channelId: savedMap['channel_id'],
              displayName: savedMap['display_name'],
              message: savedMap['message'],
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
            ));
          }
        }
      });
    }
  }

  void exitPage() {
    _navigationService.back();
  }
}
