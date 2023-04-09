import 'package:ecommercecourse/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  Locale? language;

  MyServices myServices = Get.find();

  changeLanguage(String languageCode) {
    Locale locale = Locale(languageCode);
    myServices.sharedPreferences.setString("language", languageCode);
  }

  @override
  void onInit() {
    String? sharedPrefLanguage =
        myServices.sharedPreferences.getString("language");
    if (sharedPrefLanguage == "ar") {
      language = const Locale("ar");
    } else if (sharedPrefLanguage == "en") {
      language = const Locale("en");
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
