import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/bindings/login_binding.dart';
import 'package:flutter_application_1/app/routes/pages.dart';
import 'package:flutter_application_1/app/ui/themes/light_theme.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.INITIAL,
    theme: appThemeData,
    defaultTransition: Transition.fade,
    initialBinding: LoginBinding(),
    getPages: AppPages.pages,
    builder: (context, widget) { 
      widget = EasyLoading.init()(context, widget);
      return widget;
    },
  ));
}
