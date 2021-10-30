import 'package:flutter/material.dart';
<<<<<<< HEAD:lib/ui/shared/dialogs/send_feedback_dialog.dart
import 'package:zurichat/ui/shared/colors.dart';
import 'package:zurichat/utilities/internalization/localization/app_localization.dart';
=======
import 'package:zurichat/utilities/constants/colors.dart';
import 'package:zurichat/utilities/internationalization/app_localization.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6:lib/ui/shared/dialogs/dumb_dialogs/send_feedback_dialog.dart
import 'package:stacked_services/stacked_services.dart';

class SendFeedbackDialog extends StatelessWidget {
  final DialogRequest request;
  final Function(DialogResponse) completer;
  const SendFeedbackDialog(
      {Key? key, required this.request, required this.completer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
        backgroundColor: Colors.transparent,
        child:
            _SendFeedbackDialogContent(request: request, completer: completer));
  }
}

class _SendFeedbackDialogContent extends StatelessWidget {
  final DialogRequest request;
  final Function(DialogResponse) completer;
  const _SendFeedbackDialogContent(
      {Key? key, required this.request, required this.completer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final local = AppLocalization.of(context);
    final size = MediaQuery.of(context).size;
    final controller = TextEditingController();
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * .05, vertical: size.height * .02),
      color: Theme.of(context).brightness == Brightness.dark
          ? AppColors.darkThemePrimaryColor
          : AppColors.whiteColor,
      width: size.width * .9,
      height: size.height * .3,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              local!.composeFeedback,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const Spacer(),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: double.infinity),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                  hintText: local.feedbackHint,
                  helperText: local.feedbackHelperText),
              minLines: 1,
              maxLines: 5,
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              MaterialButton(
                  onPressed: () => completer(DialogResponse(confirmed: false)),
                  child: Text(local.cancel,
                      style: const TextStyle(color: AppColors.paleGreen))),
              MaterialButton(
                  onPressed: () => completer(
                      DialogResponse(data: controller.text, confirmed: true)),
                  child: Text(local.ok,
                      style: const TextStyle(color: AppColors.paleGreen))),
            ],
          )
        ],
      ),
    );
  }
}
