import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/routes/pages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    final box = GetStorage();

    bool IsLogged = box.read('isLogged') ?? false;

    if (route != Routes.LOGIN) {
      return IsLogged ? null : RouteSettings(name: Routes.LOGIN);
    } else {
      return IsLogged ? const RouteSettings(name: Routes.HOME) : null;
    }
  }
}
