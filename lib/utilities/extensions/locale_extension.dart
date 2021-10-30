import 'package:flutter/widgets.dart';
<<<<<<< HEAD
import 'package:zurichat/constants/app_strings.dart';
import 'package:zurichat/services/localization_service.dart';
=======
import 'package:zurichat/utilities/constants/app_strings.dart';
import 'package:zurichat/services/app_services/localization_service.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6

extension LocaleExtension on Locale {
  String getLanguageName() {
    String localeName = toString();
    if (toString().trim() == '') {
      localeName = LocalizationService().appLocale.toString();
    }

    switch (localeName) {
      case 'en_US':
        return EnglishUS;
      case 'de_DE':
        return DeutschDE;
      case 'ar_SA':
        return ArabicSA;
      case 'zh_HK':
        return Mandarin;
      default:
        return LocalizationService().appLocale.toString();
    }
  }
}
