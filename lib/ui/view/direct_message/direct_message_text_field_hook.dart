import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
<<<<<<< HEAD
import 'package:zurichat/constants/app_strings.dart';
=======
import 'package:zurichat/utilities/constants/app_strings.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
import 'package:stacked_hooks/stacked_hooks.dart';

import 'direct_message_viewmodel.dart';

class TextFieldHook extends HookViewModelWidget<DirectMessageViewModel> {
  const TextFieldHook({Key? key}) : super(key: key, reactive: true);

  @override
  Widget buildViewModelWidget(
      BuildContext context, DirectMessageViewModel viewModel) {
    var controller = useTextEditingController();
    return TextField(
      controller: controller,
      decoration: const InputDecoration(
        hintText: WriteMsgHint,
        hintStyle: TextStyle(color: Colors.black54),
      ),
      onEditingComplete: () => controller.clearComposing(),
    );
  }
}
