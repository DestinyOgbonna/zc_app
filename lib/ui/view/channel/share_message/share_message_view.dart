import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zurichat/models/user_post.dart';
import 'package:zurichat/ui/shared/shared.dart';
<<<<<<< HEAD
import 'package:zurichat/ui/shared/zuri_loader.dart';
import 'package:zurichat/ui/view/channel/share_message/share_message_hook.dart';
import 'package:zurichat/ui/view/channel/share_message/share_message_viewmodel.dart';
import 'package:zurichat/utilities/internalization/localization/app_localization.dart';
=======
import 'package:zurichat/ui/shared/dumb_widgets/zuri_loader.dart';
import 'package:zurichat/ui/view/channel/share_message/share_message_hook.dart';
import 'package:zurichat/ui/view/channel/share_message/share_message_viewmodel.dart';
import 'package:zurichat/utilities/internationalization/app_localization.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
import 'package:stacked/stacked.dart';

class ShareMessageView extends StatelessWidget {
  final UserPost userPost;

  const ShareMessageView({required this.userPost, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final local = AppLocalization.of(context);
    return ViewModelBuilder<ShareMessageViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
<<<<<<< HEAD
              backgroundColor: AppColors.whiteColor,
=======
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
              appBar: AppBar(
                backgroundColor: AppColors.zuriPrimaryColor,
                leading: IconButton(
                    onPressed: model.close, icon: const Icon(Icons.close)),
                centerTitle: false,
                title: Text(local!.shareMessage),
                actions: [
                  Center(
                    child: IconButton(
                      icon: const Icon(Icons.send),
                      onPressed: () => model.sendMessage(userPost.message!),
                    ),
                  )
                ],
              ),
              body: model.isBusy
                  ? const ZuriLoader()
                  : Padding(
                      padding: const EdgeInsets.all(12),
                      child: ShareMessageHook(userPost: userPost),
                    ),
            ),
        viewModelBuilder: () => ShareMessageViewModel());
  }
}
