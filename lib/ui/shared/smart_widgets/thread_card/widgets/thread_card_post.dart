import 'package:flutter/material.dart';
import 'package:zurichat/ui/shared/bottom_sheets/zuri_chat_bottomsheet.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:stacked/stacked.dart';

import '../../../../../models/user_post.dart';
import '../../../shared.dart';
<<<<<<< HEAD
import '../../../text_styles.dart';
=======
import '../../../../../utilities/constants/text_styles.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
import '../../text_parser/text_parser_view.dart';
import '../thread_card_viewmodel.dart';
import 'package:zurichat/app/app.logger.dart';

class ThreadCardPost extends ViewModelWidget<ThreadCardViewModel> {
  ThreadCardPost(this.userThreadPost, {Key? key}) : super(key: key);

  final UserThreadPost? userThreadPost;
  final log = getLogger("ThreadCardPost");

  @override
  Widget build(BuildContext context, ThreadCardViewModel viewModel) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: viewModel.viewProfile,
                  onLongPress: () => zuriChatBottomSheet(
                      context: context,
                      addToSavedItems: () {
                        viewModel.saveItem(
                            channelID: userThreadPost!.channelId,
                            channelName: userThreadPost!.channelName,
                            displayName: userThreadPost!.displayName,
                            message: userThreadPost!.message,
                            lastSeen: userThreadPost!.moment,
                            messageID: userThreadPost!.id,
                            userID: userThreadPost!.userId,
                            userImage: userThreadPost!.userImage);
                        log.i("Saved");
                        viewModel.goBack();
                        showSimpleNotification(
                          const Text("Added successfully"),
                          position: NotificationPosition.top,
                          background: AppColors.appBarGreen,
                          trailing: const Icon(Icons.mark_chat_read_outlined),
                          duration: const Duration(seconds: 3),
                        );
                      }),
                  child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('${userThreadPost!.userImage}')),
                      )),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Flexible(
                            fit: FlexFit.loose,
                            child: Text(
                              '${userThreadPost!.displayName}',
                              style: AppTextStyle.darkGreySize14Bold,
                            ),
                          ),
                          const Icon(
                            Icons.looks_6,
                            color: AppColors.iconBlueColor,
                            size: 18,
                          ),
                          const SizedBox(width: 2),
                          Text(
                            '${userThreadPost!.postDate}',
                            style: AppTextStyle.lightGreySize12,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      TextParser(userThreadPost!.message),
                      const SizedBox(height: 10),

                      // Wrap(
                      //   spacing: 5,
                      //   runSpacing: 5,
                      //   children: [
                      //     for (Widget item in userThreadPost.
                      //postEmojis ?? [])
                      //       item
                      //   ],
                      // ),
                      // SizedBox(height: 15),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
