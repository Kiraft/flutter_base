import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class LoginController extends GetxController {
  TextEditingController txtUsuario = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  validatedCredentials() {
    String adminUser = "admin";
    String adminPass = "1234";

    if (txtUsuario.text == adminUser || txtPassword.text == adminPass) {
      // String formatUser = txtUsuario.text.toLowerCase().removeAllWhitespace;
      EasyLoading.showError("Llene los campos faltantes");
    } else {
      EasyLoading.showError("Bienvenido");
    }
  }
}
