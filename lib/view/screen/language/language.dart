import 'package:ecommercecourse/core/constant/routes.dart';
import 'package:ecommercecourse/core/localization/change_localization.dart';
import 'package:ecommercecourse/view/screen/language/widget/custom_button_lang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("1".tr, style: Theme.of(context).textTheme.headline1),
              const SizedBox(height: 20),
              CustomButtonLang(
                  textbutton: "Ar",
                  onPressed: () {
                    controller.changeLanguage("ar");
                    Get.toNamed(AppRoute.login);
                  }),
              CustomButtonLang(
                  textbutton: "En",
                  onPressed: () {
                    controller.changeLanguage("en");
                    Get.toNamed(AppRoute.login);
                  }),
            ],
          )),
    );
  }
}
