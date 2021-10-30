import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/widgets.dart';
import 'package:zurichat/app/app.logger.dart';

import 'package:url_launcher/url_launcher.dart';

import 'constants/app_constants.dart';
import 'extensions/string_extension.dart';

final log = getLogger('Utilities');
ImageProvider makeNetworkImage(String? link) {
  return link == null || !link.validateLink()
      ? const CachedNetworkImageProvider(defaultNetworkImage)
      : CachedNetworkImageProvider(link);
}

Future<void> openUrl(String? url) async {
  if (url != null && url.validateLink()) {
    // final canOpen = await canLaunch(url);
    // if (canOpen) await launch(url);
  }
}

void showProgress(received, total) {
  if (total != -1) {
    log.i((received / total * 100).toStringAsFixed(0) + '%');
  }
}

bool nullListChecker(List? list) {
  if (list == null) {
    return true;
  } else {
    return false;
  }
}

<<<<<<< HEAD
launcher(String url) {
=======
Future<bool> launcher(String url) {
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
  var _launcher = launch(url);
  return _launcher;
}

<<<<<<< HEAD
Future<bool> canLaunch(String url) async {
=======
Future<bool> canLaunchUrl(String url) async {
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
  var islaunchable = await canLaunch(url);
  return islaunchable;
}
