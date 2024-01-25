import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/controllers/login_controller.dart';
import 'package:flutter_application_1/app/ui/utiles/style_utils.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY,
      body: SafeArea(
        child: Container(
          color: Colors.red,
          constraints: const BoxConstraints.expand(),
          child: Column(
            children: [
              Container(
                constraints: const BoxConstraints.expand(height: 150),
                color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 230,
                      height: 100,
                      child: Image.asset(
                        "assets/imgs/logo_login.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  constraints: const BoxConstraints.expand(height: 200),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                      ),
                      color: PRIMARY),
                  child:
                      GetBuilder<LoginController>(builder: (loginControlller) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Iniciar Sesion",
                          style: TextStyle(
                            fontSize: H3,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Material(
                          elevation: 8.0,
                          shadowColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: TextField(
                            controller: loginControlller.txtUsuario,
                            decoration: const InputDecoration(
                                labelText: "Ingrese usuario",
                                filled: true,
                                fillColor: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Material(
                          borderRadius: BorderRadius.circular(9),
                          elevation: 8,
                          child: TextField(
                            decoration: InputDecoration(
                              focusColor: Colors.red,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                              ),
                              labelText: "Ingrese contraseña",
                              filled: true,
                              fillColor: PRIMARY,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          constraints: const BoxConstraints.expand(height: 50),
                          child: TextButton(
                            onPressed: () {
                              loginControlller.validatedCredentials();
                            },
                            style: ButtonStyle(
                              backgroundColor: const MaterialStatePropertyAll(
                                Colors.red,
                              ),
                              shape: MaterialStateProperty.all(
                                const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                            child: const Text(
                              "Ingresar",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
